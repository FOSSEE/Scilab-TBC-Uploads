clc
clear

//Input data
m=25 //Mass flow rate of air in kg/s
C2=115 //Outlet velocity in m/s
P1=100 ////Initial Pressure in kPa
T1=300 //Intial Temperature in K
C1=40 //Inlet velocity in m/s
R=0.287 //Specific gas constant in kJ/kg-K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K
k=1.4 //Adiabatic constant

//Calculation
T2=T1+((C1^2-C2^2)/(2*Cp)) //Final Temperature in K
t1=T2/T1 //Temperature ratio
P2=P1*t1^(k/(k-1)) //Final Pressure in bar
A1=(m*R*T1)/(P1*C1) //Area at inlet in m^2
A2=(m*R*T2)/(P2*C2) //Area at outlet in m^2
F=((P1*A1)-(P2*A2))+(m*(C1-C2))*10^-3 //Axial force on mouthpiece resulting from acceleration of air in kN

//Output
printf('(A)Static pressure at intake face is %3.3f kPa\n (B)Magnitude of axial force on mouthpiece resulting from acceleration of air is %3.3f kN',P2,F)
