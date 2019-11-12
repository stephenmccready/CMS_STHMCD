Select	SubString(I.[Column 0],1,11) As HICN
,		SubString(I.[Column 0],615,11) As MBI
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
,		SubString(I.[Column 0],163,2) As ServiceType
,		SubString(I.[Column 0],165,40) As ClaimControlNum1
,		SubString(I.[Column 0],205,3) As ClaimAdjustmentReasonCode
,		SubString(I.[Column 0],208,40) As OriginalClaimControlNumber
,		SubString(I.[Column 0],248,5) As ProcedureCode
,		SubString(I.[Column 0],253,2) As Modifier1
,		SubString(I.[Column 0],255,2) As Modifier2
,		SubString(I.[Column 0],257,2) As Modifier3
,		SubString(I.[Column 0],259,2) As Modifier4
,		SubString(I.[Column 0],261,2) As PlaceOfServiceCode
,		SubString(I.[Column 0],263,11) As NDC
,		SubString(I.[Column 0],274,10) As BillingProviderNPI
,		SubString(I.[Column 0],284,20) As BillingProviderNumber
,		SubString(I.[Column 0],304,70) As ProviderLegalName
,		SubString(I.[Column 0],374,70) As ProviderPhone
,		SubString(I.[Column 0],444,3) As BillingProviderType
,		SubString(I.[Column 0],447,3) As RenderingProviderType
,		SubString(I.[Column 0],450,2) As ProviderSpecialtyCode
,		SubString(I.[Column 0],452,20) As ProviderNumber
,		SubString(I.[Column 0],472,2) As PrescribingProviderNumberType
,		SubString(I.[Column 0],474,40) As ClaimControlNum2
,		SubString(I.[Column 0],514,2) As ClaimLineNum
,		SubString(I.[Column 0],516,4) As NationalReveneuCode
,		Case When P.PersonLastName Is Null Then SubString(I.[Column 0],520,40) Else P.PersonLastName End As MemberLastName
,		Case When P.PersonFirstName Is Null Then SubString(I.[Column 0],560,30) Else P.PersonFirstName End As MemberFirstName
,		Case When P.PersonMiddleName Is Null Then SubString(I.[Column 0],590,1) Else P.PersonMiddleName End As MemberMiddleName
From	FIDAPartB_IN As I
