clc
clear

//Input data
T1=335 //Inlet temperature in K
P1=655 //Inlet pressure in kPa
C1=150 //Inlet velocity in m/s
P2=138 //Exit pressure in kPa
T2=222 //Exit temperature in K
m=9 //Mass flow rate in kg/s
Mol=32 //Molar mass of oxygen in kg/mol
Ri=8314 //Ideal gas constant in J/kg-k
k=1.4 //Adiabatic Constant
Cp=915 //Specific heat capacity at constant pressure in J/kg-K 

//Calculation
R=Ri/Mol //Specific gas constant in J/kg-K
a1=sqrt(k*R*T1) //Sound velocity at inlet in m/s 
M1=C1/a1 //Inlet mach number
t1=0.964 //Ratio of inlet temperature to Stagnation temperature from gas tables @M1,k=1.4
To1=T1/t1 //Stagnation temperature at inlet in K
p1=0.881 //Ratio of inlet pressure to Stagnation pressure at entry from gas tables @M1,k=1.4 
Po1=P1/p1 //Stagnation pressure at entry in kPa
t2=0.834 //Ratio of critical temperature to Stagnation temperature from gas tables @M=1
Tt=To1*t2 //critical temperature in K
C2=sqrt(C1^2+(2*Cp*(T1-T2))) //Exit velocity in m/s, 
a2=sqrt(k*R*T2) //Sound velocity at exit in m/s 
M2=C2/a2 //Exit mach number 
p2=0.208 //Ratio of exit pressure to Stagnation pressure at exit from isentropic gas tables @M2,k=1.4
Po2=P2/p2 //Stagnation pressure at exit in kPa
SPC=(Po1-Po2) //Change in the stagnation pressure between inlet and exit in kPa
ds=R*log(Po1/Po2) //Change in entropy in J/kg-K
T2s=T1*((P2/P1)^((k-1)/k)) //Exit temperature at isentropic state in K
eff=((T1-T2)/(T1-T2s))*100 //Nozzle efficiency in percent

//Output
printf('(A)Exit mach number is %3.2f\n (B)Change in the stagnation pressure between inlet and exit is %3.2f kPa\n (C)Change in entropy is %3.3f J/kg-K\n (D)Static temperature at throat is %3.1f K\n (E)Nozzle efficiency is %3.2f percent',M2,SPC,ds,Tt,eff)
