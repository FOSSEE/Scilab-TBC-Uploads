//To Determine the savings in kilowatt losses
//Page 411
clc;
clear;

// 1 is Total Loss Reduction due to Capacitors
// 2 is Additional Loss Reduction due to Capacitor
// 3 is Total Demand Reduction due to capacitor
// 4 is Total required capacitor additions

C90=[495165,85771,22506007,9810141]; //Characteristics at 90% Power Factor
C98=[491738,75343,21172616,4213297]; //Characteristics at 98% Power Factor

//Responsibility Factors
RF90=1;
RF98=0.9;

SLF=0.17; //System Loss Factor
FCR=0.2; //Fixed Charge Rate
DC=250; //Demand Cost
ACC=4.75; //Average Capacitor Cost
EC=0.045; //Energy Cost
Cd=C90-C98; //Difference in Characteristics

TAS=Cd(1)+Cd(2); //Total Additional Kilowatt Savings

ASDR1=Cd(1)*RF90*DC*FCR;
ASDR2=Cd(2)*RF98*DC*FCR;
TASDR=ASDR1+ASDR2; //Total Annual Savings due to demand
x=27; // Cost for Per kVA of the capacity
TASTC=Cd(3)*FCR*x; //Annual Savings due to Transmission Capacity
TASEL=TAS*SLF*EC*8760; //Savings due to energy loss reduction
TACAC=Cd(4)*FCR*ACC; //Annual Cost of Additional Capacitors
Savings=TASEL+TASDR+TASTC; //Total Savings

printf('\na) The Resulting additional savings in kilowatt losses due to power factor improvement at the substation buses is %g kW\n',Cd(1))
printf('b) The Resulting assitional savings in kilowatt  losses due to the power factor improvement for feeders is %g kW\n',Cd(2))
printf('c) The Additional Kilowatt Savings is %g kW\n',TAS)
printf('d) The Additional savings in the system kilovoltampere capacity is %g kVA\n',Cd(3))
printf('e) The Additional Capacitors required are %g kVAr\n',Cd(4))
printf('f) The Annual Savings in demand reduction due to capacitors applied to distribution substation buses is approximately is %g dollars/year\n',TASDR)
printf('g) The Annual Savings due to the additional released transmission capacity is %g dollars/year\n',TASTC)
printf('h) The Total Anuual Savings due to the energy loss reduction is %g dollars/year\n',TASEL)
printf('i) The Total Annual Cost of the additional capacitors is %g dollars/year\n',TACAC)
printf('j) The Total Annual Savings is %g dollars/year\n',Savings)
printf('k) No, Since the total net annual savings is not zero\n')

