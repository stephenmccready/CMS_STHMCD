Select	SubString(I.[Column 0],1,11) As HICN
,		SubString(I.[Column 0],625,11) As MBI
,		SubString(I.[Column 0],12,5) As BenefitContractNumber
,		SubString(I.[Column 0],17,8) As AdmitDateCCYYMMDD
,		Case When SubString(I.[Column 0],17,8) = '10000101' Then Null 
			 Else Cast(SubString(I.[Column 0],21,2) + '/' + SubString(I.[Column 0],23,2) + '/' + SubString(I.[Column 0],17,4) As DateTime) End As AdmitDate
,		SubString(I.[Column 0],25,8) As DischargeDateCCYYMMDD
,		Case When SubString(I.[Column 0],25,8) = '10000101' Then Null 
			 Else Cast(SubString(I.[Column 0],29,2) + '/' + SubString(I.[Column 0],31,2) + '/' + SubString(I.[Column 0],25,4) As DateTime) End As DischargeDate
,		SubString(I.[Column 0],33,8) As FromDateCCYYMMDD
,		Case When SubString(I.[Column 0],33,8) = '10000101' Then Null 
			 Else Cast(SubString(I.[Column 0],37,2) + '/' + SubString(I.[Column 0],39,2) + '/' + SubString(I.[Column 0],33,4) As DateTime) End As FromDate
,		SubString(I.[Column 0],41,8) As ThruDateCCYYMMDD
,		Case When SubString(I.[Column 0],41,8) = '10000101' Then Null 
			 Else Cast(SubString(I.[Column 0],45,2) + '/' + SubString(I.[Column 0],47,2) + '/' + SubString(I.[Column 0],41,4) As DateTime) End As ThruDate
,		SubString(I.[Column 0],49,7) As DiagnosisCode1
,		SubString(I.[Column 0],56,50) As Diagnosis1
,		SubString(I.[Column 0],106,7) As DiagnosisCode2
,		SubString(I.[Column 0],113,50) As Diagnosis2
,		SubString(I.[Column 0],163,2) As DischargeCode
,		SubString(I.[Column 0],165,2) As AdmissionType
,		SubString(I.[Column 0],167,2) As AdmissionSource
,		SubString(I.[Column 0],169,2) As ServiceType
,		SubString(I.[Column 0],171,40) As ClaimControlNum1
,		SubString(I.[Column 0],211,3) As ClaimAdjustmentReasonCode
,		SubString(I.[Column 0],214,40) As OriginalClaimControlNumber
,		SubString(I.[Column 0],254,5) As ProcedureCode
,		SubString(I.[Column 0],259,2) As Modifier1
,		SubString(I.[Column 0],261,2) As Modifier2
,		SubString(I.[Column 0],263,2) As Modifier3
,		SubString(I.[Column 0],265,2) As Modifier4
,		SubString(I.[Column 0],267,2) As EmergencyAdmitInd
,		SubString(I.[Column 0],269,2) As PlaceOfServiceCode
,		SubString(I.[Column 0],271,11) As NDC
,		SubString(I.[Column 0],282,10) As NPI
,		SubString(I.[Column 0],292,20) As BillingProvider
,		SubString(I.[Column 0],312,70) As ProviderLegalName
,		SubString(I.[Column 0],382,70) As ProviderPhone
,		SubString(I.[Column 0],452,3) As BillingProviderType
,		SubString(I.[Column 0],455,3) As RenderingProviderType
,		SubString(I.[Column 0],458,20) As ProviderNumber
,		SubString(I.[Column 0],478,2) As PrescribingProviderNumberType
,		SubString(I.[Column 0],480,40) As ClaimControlNum2
,		SubString(I.[Column 0],520,2) As ClaimLineNum
,		SubString(I.[Column 0],522,4) As NationalReveneuCode
,		SubString(I.[Column 0],526,4) As DRG_Code
,		Case When P.PersonLastName Is Null Then SubString(I.[Column 0],530,40) Else P.PersonLastName End As MemberLastName
,		Case When P.PersonFirstName Is Null Then SubString(I.[Column 0],570,30) Else P.PersonFirstName End As MemberFirstName
,		Case When P.PersonMiddleName Is Null Then SubString(I.[Column 0],600,1) Else P.PersonMiddleName End As MemberMiddleName
From	FIDAPartA_IN As I
