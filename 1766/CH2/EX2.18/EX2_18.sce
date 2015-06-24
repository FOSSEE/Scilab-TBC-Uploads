clc;funcprot(0);//Example 2.18
//Initilisation of Variables
d1=0.5;....//diameter of container in m
T1=80;....//inner temparature of spherical container in degrees celcius
t=0.025;....//thickness of insulating materials in m
Ta=303;....//outer surface temparature of spherical container in degrees celcius
K1=0.042;....//thermal conductivity of first insulating layer in W/m*K
K=0.0017;....//thermal conductivity of second insulating layer in W/m*K 
h=20;....//heat transfer coefficient in W/m^2
hfg=2*10^2;....//latent heat of vapouraisation o f liquid nitrogen in kJ/Kg*degrees celcius
//calculations
r1=d1/2;....//radius of container in m
r2=r1+t;....//radius of inner layer in m
r3=r2+t;....//radius of outer layer in m
R1=(r2-r1)/(4*%pi*K1*r1*r2);.....//resistance of first layer  in degrees celcius/W
R2=(r3-r2)/(4*%pi*K*r2*r3);.....//resistance of second layer  in degrees celcius/W
R3=1/(4*%pi*h*r3^2);.....//resistance of inner layer  in degrees celcius/W
Q=(T1-Ta)/(R1+R2+R3);....//heat flows from the airbient air to nitrogen in W
m=Q/(hfg*10^3);....//rate of vapouraisation of liquid nitrogen per hour Kg/s
disp(m*3600,"rate of vapouraisation of liquid nitrogen per hour Kg/hr:")
