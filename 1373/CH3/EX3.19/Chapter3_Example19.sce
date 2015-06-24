//Chapter-3, Example 3.19, Page 78
//=============================================================================
clc
clear

//INPUT DATA
Di=0.001;//Diameter of copper wire in m
t=0.001;//Thickness of insulation in m;
To=20;//Temperature of surrondings in degree C
Ti=80;//Maximum temperature of the plastic in degree C
kcopper=400;//Thermal conductivity of copper in W/m.K
kplastic=0.5;//Thermal conductivity of plastic in W/m.K
h=8;//Heat transfer coefficient in W/m^2.K
p=(3*10^-8);//Specific electric resistance of copper in Ohm.m

//CAlCULATIONS
r=(Di/2);//Radius of copper tube in m
ro=(r+t);//Radius in m 
R=(p/(3.14*r*r*0.01));//Electrical resistance per meter length in ohm/m
Rth=((1/(2*3.14*ro*h))+(log(ro/r)/(2*3.14*kplastic)));//Thermal resistance of convection film insulation per metre length 
Q=((Ti-To)/Rth);//Heat transfer in W
I=sqrt(Q/R);//Maximum safe current limit in A
rc=((kplastic*100)/h);//Critical radius in cm

//OUTPUT
mprintf('The maximum safe current limit is %3.3f A \n As the critical radius of insulation is much greater than that provided in the problem, the current carrying capacity of the conductor can be raised considerably in increasing the radius of plastic covering upto %3.1f cm.\n This may however lead to the problem of having too high a temperature at the cable centre if the temperature inside the plastic coating has to be kept within the given limits',I,rc)

//=================================END OF PROGRAM==============================
