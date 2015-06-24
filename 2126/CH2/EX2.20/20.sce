clc
clear

//Input data
C1=200 //Inlet velocity in m/s
Po1=400 //Stagnation pressure at entry in kPa
To1=500 //Stagnation temperature at inlet in K
C2=100 //Exit velocity in m/s
eff=0.9 //Nozzle efficiency 
k=1.4 //Adiabatic Constant
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K 

//Calculation
T1=To1-(C1^2/(2*Cp)) //Inlet temperature in K
t1=T1/To1 //Temperature ratio 
P1=Po1*t1^(k/(k-1)) //Inlet pressure in kPa
To2s=(eff*(To1-T1))+T1 //Exit Stagnation temperature at isentropic state in K
To2=To2s //Exit Stagnation temperature in K, Since adiabatic 
T2=To2-(C2^2/(2*Cp)) //Exit temperature in K
t2=To2s/T1 //Temperature ratio 
Po2=P1*t2^(k/(k-1)) //Stagnation pressure at exit in kPa
t3=T2/To2 //Temperature ratio 
P2=Po2*t3^(k/(k-1)) //Exit pressure in kPa
Cpr=(P2-P1)/(Po1-P1) //Pressure raise coefficient
ar=(P1*T2*C1)/(P2*T1*C2) //Ratio of exit to inlet area

//Output
printf('(A)Pressure raise coefficient is %3.3f\n (B)Ratio of exit to inlet area is %3.3f',Cpr,ar)
