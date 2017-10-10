clc;
clear;
Na=10^18 //in cm^-3
Nd=10^17 //in cm^-3
myu_p=471 //in cm^2/Vs
myu_n=1417 //in cm^2/Vs
tau_p=10^-8 //in s
tau_n=10^-6 //in s 
JL=40 //in mA/cm^2
A=10^-5 //in cm^2
R1=1000 //in ohm
e=1.6*10^-19 //in J
ni=1.45*10^10 //in cm^-3
Vt=0.02586 //constant for kT/e at 300K in V
V=0.1 //in V
n=10 //number of solar cells

//Calculation
//a)
Dp=Vt*myu_p //in cm^2/s
Dn=Vt*myu_n //in cm^2/s
Ln=sqrt(Dn*tau_n) //in cm
Lp=sqrt(Dp*tau_p) //in cm
Js=e*ni^2*((Dp/(Nd*Lp))+(Dn/(Na*Ln))) //in A/cm^2
Is=Js*10^-5 //in A
IF=Is*(exp(V/Vt)-1) //in A

//b)
IL=40*10^-8 //in A
I=IL-IF //in 
X=((10^-3)/(I))*n

mprintf("a)Current= %.2e A\n",IF) //The answers vary due to round off error
mprintf("b)Total number of solar cells= %i",X)
