//Moment of Inertia of flywheel
//refer fig. 10.24
//Moment of inertia of rim
aRo=1.5/2
aRi=1.4/2
at=0.30
rho=7200  //kg/m^3
I1=((%pi)*0.3*7200*(0.75^4-0.7^4))/(2)  //units
//Moment of inertia of hub
bRo=0.25/2  //m
bRi=0.1/2  //m
bt=0.2  //m
I2=(%pi)*(0.2*7200)*(0.125^4-0.05^4)/(2)  //units
//Moment of inertia of Arms
A=8000*(10^-9)  //m^2
l=0.575  //m
d=(0.575/2)+0.125  //m
M=l*A*rho  //kg
//there are six such arms
I3=6*0.03312*((0.575)^2/(12))*(0.4125^2)  //units
//moment of inertia of flywheel
I=I1+I2+I3  //units
printf("\nmoment of inertia of flywheel=%.2f units",I)



