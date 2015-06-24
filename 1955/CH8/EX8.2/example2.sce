clc
clear
//input data
b2=30//Impeller blade angle to the tangent at impeller outlet in degree
d=0.02//Blade depth in m
D=0.25//Blade diameter in m
N=1450//Pump rotation speed in rpm
Q=0.028//FLow rate of the pump in m^3/s
sf=0.77//Slip factor 
g=9.81//Acceleration due to gravity in m/s^2

//calculations
A=3.1415*d*D//Flow area in m^2
Cr2=Q/A//Flow velocity in m/s
Wx2=Cr2/tand(b2)//Exit relative velocity in m/s
U2=(3.14*D*N)/60//Tip speed of pump in m/s
Cx2=U2-Wx2//Absolute whirl component at exit in m/s
E=(U2*Cx2)/g//Euler head with no whirl at inlet in m
Cx21=sf*Cx2//Actual value of component of absolute value in tangential direction in m/s
Es=sf*E//Theoretical head with slip in m
Z=(3.145*sind(b2))/((1-sf)*(1-((Cr2/U2)*cotd(b2))))//Number of blades required based on stodola slip factor

//output
printf('(a)Theoretical head with slip is %3.2f m\n(b)Number of blades required is %3.f',Es,Z)
