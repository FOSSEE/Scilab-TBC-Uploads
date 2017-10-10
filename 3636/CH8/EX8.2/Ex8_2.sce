clc;
clear;
ni=1.5*10^10 //in cm^3
Na=5*10^16 //in cm^3
Nd=5*10^18 //in cm^3
VBE=0.6 //in V
WB=3*10^-4 //in cm
Const=0.026 //constant for kT/e in V

//Calculation
//a)
np0=ni^2/Na //in cm^-3
deln_x=(np0/WB)*(((exp(VBE/Const)-1)*(2/3*WB))-WB/3)

//b)
deln_x1=(np0/WB)*(exp(VBE/Const)-1)*WB

mprintf("Excess minority carrier concentration at x=WB/3 = %1.2e cm^-3\n",deln_x) //The answers vary due to round off error
mprintf("Excess minority carrier concentration at x=0 = %1.2e cm^-3\n",deln_x1) //The answers vary due to round off error






