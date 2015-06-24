clc
clear

//Input data
P1=2 //Intial pressure in bar
C1=170 //Initial velocity of air in m/s
T1=473 //Intial temperature in K
A1=1000 //Inlet area in mm^2
P2=0.95 //Exit pressure in bar
k=1.4 //Adiabatic Constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
a_1=sqrt(k*R*T1) //Velocity of sound at inlet in m/s
M1=C1/a_1 //Inlet mach number
t1=0.970 //Ratio of inlet temperature to Stagnation temperature from gas tables @M=1
To1=T1/t1 //Stagnation temperature in K
p1=0.900 //Ratio of inlet pressure to Stagnation pressure from gas tables @M=1
Po1=P1/p1 //Stagnation pressure in bar
a1=1.623 //Ratio of inlet area to critical area from isentropic gas tables @M=1
At=A1/a1 //critical area in mm^2
p2=0.528 //Pressure ratio at critical state from isentropic gas tables @M=1
Pt=Po1*p2 //Throat pressure in bar
t2=0.834 //Temperature ratio at critical state from isentropic gas tables @M=1
Tt=To1*t2 //Throat temperature in K
a_t=sqrt(k*R*Tt) //Velocity of sound at throat in m/s
C_t=a_t //Critical velocity of air in m/s
p3=P2/Po1 //Pressure ratio at exit 
M2=1.17 //Mach number at exit from isentropic gas tables @p3
t3=0.785 //Temperature ratio at exit from isentropic gas tables @M2
T2=To1*t3 //Exit temperature in K
a3=1.022 //Area ratio at exit from isentropic gas tables @M2
A2=At*a3 //Exit area in mm^2,  wrong answer in textbook
C2=M2*sqrt(k*R*T2) //Exit velocity in m/s

//Output
printf('(A)Stagnation temperature and pressure are %3.2f K and %3.3f bar\n (B)Sonic velocity and mach number at entry are %3.2f m/s and %3.2f\n (C)Velocity, Mach number and flow area at outlet section are %3.2f m/s, %3.2f and %3.2f mm^2\n (D)Pressure, area at throat of the nozzle are %3.5f bar and %3.3f mm^2',To1,Po1,a_1,M1,C2,M2,A2,Pt,At)
