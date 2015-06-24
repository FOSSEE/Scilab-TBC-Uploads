
//To Determine the Yearly Cost of the substation
//Page 75
clc;
clear;
Teff=95/100; //Transmission Efficiency
Deff=85/100; //Distribution Efficiency
DFT=1.2; //Diversity Factor For Transmission
DFD=1.3; //Diversity Factor For Distribution
MDGS=100*(10^6); //Maximum Demand of Generating Station
ALF=40/100; //Annual Load Factor
ACCT=2.5*(10^6); //Annual Capital Charge for Transmission
ACCD=2*(10^6); //Annual Capital Charge for Distribution
GCC=100; //Generating Cost per KW demand
GCCU=5/100; // Per Unit Cost
//Fixed Charges from Supply to Substation Annually
GFC=GCC*MDGS/1000; //Generating
TFC=ACCT; //Transmission
TotFCS=GFC+TFC  //Total
//Fixed Charges for supply upto Consumer Annually
DFC=ACCD; //Distribution
TotFCC=TotFCS+DFC; //Total

AMDS= DFT*MDGS/1000; //Aggregate of Maximum Demand at Supply
AMDC= DFD*AMDS; //Aggregate of Maximum Demand for Consumers

FCS=TotFCS/AMDS; //Fixed Charges Per KW at substation
CES=GCCU/Teff; //Cost of energy at the substation

FCC=TotFCC/AMDC; //Fixed Charges per KW at the consumer premises
CEC=CES/Deff; //Cost of Energy at the consumer premises

printf('The Yealy Cost per KW demand and the cost per KWhr at:\n')
printf('a) The substation is %g rupees per KW and %g paise per KWhr\n',FCS,CES*100)
printf('b) The consumer premises is %g rupees per KW and %g paise per KWhr\n',FCC,CEC*100)
