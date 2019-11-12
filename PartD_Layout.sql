Select	SubString(I.[Column 0],1,11) As HICN
,		SubString(I.[Column 0],243,11) As MBI
,		SubString(I.[Column 0],12,8) As FromDateCCYYMMDD
,		Case When SubString(I.[Column 0],12,8) = '10000101' Then Null 
			 Else Cast(SubString(I.[Column 0],16,2) + '/' + SubString(I.[Column 0],18,2) + '/' + SubString(I.[Column 0],12,4) As DateTime) End As FromDate
,		SubString(I.[Column 0],20,8) As PaymentDateCCYYMMDD
,		Case When SubString(I.[Column 0],20,8) = '10000101' Then Null 
			 Else Cast(SubString(I.[Column 0],24,2) + '/' + SubString(I.[Column 0],26,2) + '/' + SubString(I.[Column 0],20,4) As DateTime) End As PaymentDate
,		SubString(I.[Column 0],28,11) As NDC
,		SubString(I.[Column 0],39,2) As ServiceProviderIDQualifierCode
,		SubString(I.[Column 0],41,20) As ServiceProviderID
,		SubString(I.[Column 0],61,9) As ClaimLineFillNumber
,		SubString(I.[Column 0],70,1) As DispensingStatusCode
,		SubString(I.[Column 0],71,1) As CompoundCode
,		SubString(I.[Column 0],72,1) As ProductSelectionInd
,		SubString(I.[Column 0],73,18) As Dosage
,		SubString(I.[Column 0],91,9) As DaysSupply
,		SubString(I.[Column 0],100,2) As PrescribingProviderIDQualifierCode
,		SubString(I.[Column 0],102,20) As PrescribingProviderID
,		SubString(I.[Column 0],122,2) As CoverageStatus
,		SubString(I.[Column 0],124,1) As PDEType
,		SubString(I.[Column 0],125,1) As ClaimFormatCode
,		SubString(I.[Column 0],126,1) As PricingExceptionCode
,		SubString(I.[Column 0],127,13) As ClaimUniqueId
,		Case When P.PersonLastName Is Null Then SubString(I.[Column 0],141,40) Else P.PersonLastName End As MemberLastName
,		Case When P.PersonFirstName Is Null Then SubString(I.[Column 0],181,30) Else P.PersonFirstName End As MemberFirstName
,		Case When P.PersonMiddleName Is Null Then SubString(I.[Column 0],211,1) Else P.PersonMiddleName End As MemberMiddleName
From	Sandbox.dbo.FIDAPartD_IN As I
