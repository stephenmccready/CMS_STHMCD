# CMS_STHMCD

<p>CMS is finalizing a process to share the most recently submitted Medicare claims/event data directly to contracted plans participating 
in the New York Fully Integrated Duals Advantage (FIDA) Plans and New York State Department of Health (NYSDOH) demonstration under the 
Financial Alignment Initiative.   The purpose is for the New York Fully Integrated Duals Advantage plans to use the data to fulfill 
contract requirements to assess individual needs.  The plans have indicated the importance of pre-enrollment beneficiary-level data to 
help them more effectively stratify and prioritize Participant assessments.</p>   
 
<p>CMS will send monthly files of Medicare A and B claims and Medicare Part D prescription drug event data (PDE) to New York Fully 
Integrated Duals Advantage Plans that are interested.  The first step to effectuate this is to establish a Data Use Agreement 
(DUA) between CMS and the contracted plans.  </p>
 
<h4>Background on Process</h4>
<p>Each month enrollments are submitted, the CMS MARx system will create a finder file for each demonstration plan (per H #) of only 
new Participants processed that month.   These finder files will be used to extract the most recently submitted 12 months of 
Medicare A/B and D data from the CMS Integrated Data Repository, for each of the beneficiaries contained in the finder file, 
with the exclusion of substance abuse diagnoses/procedures.</p>

<p>The extracted data will be put on three separate files (i.e., one for Part A, Part B, and Part D services, respectively).  
The three files will be transmitted directly to the Medicare-Medicaid Plans monthly.  Files will be generated only if new 
passive / opt-in enrollments were submitted in the previous month.  Otherwise no files will be transmitted.   Please note that 
this is a flat file, and includes key elements for each claim/PDE.
Below is an example of the file naming convention:</p>
<ul>
<li>P.RHxxxx.STHMCD.PTA.Dyymmdd.Thhmmsst</li>
<li>P.RHxxxx.STHMCD.PTB.Dyymmdd.Thhmmsst</li>
<li>P.RHxxxx.STHMCD.PTD.Dyymmdd.Thhmmsst</li>
</ul>
<b>concatAYear.py</b> concatenates the Part A, Part B and Part D monthly files for a specified year into 3 'annual' files

