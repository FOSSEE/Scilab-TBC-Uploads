clc
clear

//Input data
D1=15 //Entry diameter in cm
D2=30 //Exit diamater in cm 
P1=0.96 //Inlet pressure in bar
T1=340 //Inlet temperature in K
C1=185 //INlet velocity in m/s
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K

//Calculation
A1=%pi*D1^2/4 //Entry area in cm^2
A2=%pi*D2^2/4 //Exit area in cm^2
a_1=sqrt(k*R*T1) //Sound velocity in m/s
M1=C1/a_1 //Inlet mach number 
p1=0.843 //Ratio of inlet pressure to Stagnation pressure from gas tables @M1,k=1.4
Po1=P1/p1 //Stagnation pressure in bar
t1=0.952 //Ratio of inlet temperature to Stagnation temperature from gas tables @M1,k=1.4
To1=T1/t1 //Stagnation temperature in K
a1=1.34 //Ratio of inlet area to critical area from isentropic gas tables @M1,k=1.4
At=A1/a1 //critical area in cm^2
a2=A2/At //Area ratio
M2=0.1088  //Exit mach number from gas tables @a2,k=1.4
p2=0.992 //Ratio of exit pressure to Stagnation pressure from isentropic gas tables @M2,k=1.4
P2=Po1*p2 //exit pressure in bar
t2=0.9976 //Ratio of exit temperature to Stagnation temperature from isentropic gas tables @M2,k=1.4
T2=To1*t2 //exit temperature in K
C2=sqrt(k*R*T2)*M2 //Exit velocity in m/s
F1=P1*10^5*A1*10^-4*(1+(k*(M1^2))) //Force exerted at entry in kN
F2=P2*10^5*A2*10^-4*(1+(k*(M2^2))) //Force exerted at exit in kN
F=(F2-F1)*10^-3 //Force exerted on the diffuser walls in kN, wrong answer in textbook 

//Output
printf('(A)Exit pressure is %3.3f bar\n (B)Exit velocity is %3.2f m/s\n (C)Force exerted on the diffuser walls is %3.3f kN',P2,C2,F)
