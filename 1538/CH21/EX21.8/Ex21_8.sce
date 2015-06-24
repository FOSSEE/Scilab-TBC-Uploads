//example-21.8
//page no-634
//given
//frequency
f=50  //Hz
//mass
m=50  //kg
//density
rho=7500  //kg/m^3
//volume of material
V=m/rho  //m^3
//hysteresis loop area
A=150  //m^2
//scale factor
//1 cm=0.008 Wb/m^2 on y-axis and 1cm=20 A/m on x-axis
//energy lost during each cycle
E=A*0.008*20*10^4  //J/m^3
//poer loss due to hysteresis
P=E*f*V  //J/s
//energy lost in one hour
Wh=P*(60*60)  //J
printf ("the energy lost in one hour is %e J",Wh)
