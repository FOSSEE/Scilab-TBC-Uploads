clc
clear

//Input data
D=2.5 //Diameter in m
u=500*(5/18) //Flight velocity in m/s
h=8000 //Altitude in m
sig=0.75 //Jet speed ratio 
g=9.81 //Acceleration due to gravity in m/s^2

//Calculation
d=0.525 //from gas tables
A=%pi*D^2*0.25 //Area of flow in m^2 
Cj=u/sig //Jet velocity in m/s
Vf=(u+Cj)/2 //Velocity of flow in m/s
ma=d*A*Vf //Mass flow rate of air in kg/s
F=ma*(Cj-u)*10^-3 //Thrust in kN
P=F*u //Thrust power in kW
Fs=F*10^3/ma //Specific thrust in Ns/kg
Is=Fs/g //Specific impulse in sec

//Output
printf('(A)Flow rate of air through the propeller is %3.3f m/s\n (B)Thrust produced is %3.3f kN\n (C)Specific thrust is %3.2f N-s/kg\n (D)Specific impulse is %3.3f sec\n (E)Thrust power is %3.1f kW',ma,F,Fs,Is,P)
