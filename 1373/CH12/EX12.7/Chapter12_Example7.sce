//Chapter-12, Example 12.7, Page 516
//=============================================================================
clc
clear

//INPUT DATA
T=100;//Temperature of saturated steam in degree C
t1=30;//Inlet temperature of water in degree C
t2=70;//Exit temperature of water in degree C

//CALCULATIONS
//COUNTER FLOW
Tc=(T-t2);//Temperature difference between saturated steam and exit water temperature in degree C
tc=(T-t1);//Temperature difference between saturated steam and inlet water temperature in degree C
Tlmc=((Tc-tc)/log(Tc/tc));//LMTD for counter flow in degree C
//PARALLEL FLOW
Tp=(T-t1);//Temperature difference between saturated steam and inlet water temperature in degree C
tp=(T-t2);//Temperature difference between saturated steam and exit water temperature in degree C
Tlmp=((Tp-tp)/log(Tp/tp));//LMTD for counter flow in degree C
//CROSS FLOW
R=((T-T)/(t2-t1));//R value for Correction factor F
P=((t2-t1)/(T-t1));//P value for Correction Factor F
F=1;//Referring to Fig.12.12 in page no 515
Tlmx=(F*Tlmc);//LMTD for cross flow in degree C

//OUTPUT
mprintf('The effective log mean temperature difference for: \n i)COUNTER FLOW is %3.1f degree C \n ii)PARALLEL FLOW is %3.1f degree C \n iii)CROSS FLOW is %3.1f degree C',Tlmc,Tlmp,Tlmx)

//=================================END OF PROGRAM==============================
