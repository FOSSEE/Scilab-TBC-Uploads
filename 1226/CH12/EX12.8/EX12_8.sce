clc;funcprot(0);//EXAMPLE 12.8
// Initialisation of Variables
Vpbes=7;.................//Volume of fuel in the pump barrel before commencement of effective stroke in cc
df=3;.................//Diameter of fuel line from pump to injector in mm
lf=700;.................//Length of fuel line from pump to injector in mm
Vfiv=2;................//Volume of fuel in the injection valve in cc
Vfd=0.1;.................//Volume of fuel to be delivered in cc
p1=150;..............//Pressure at which fuel is delivered in bar
p2=1;.................//atmospheric pressure in bar
cc=78.8*10^(-6);..........//Co - efficient of compressibility per bar
dp=7;..............//Diameter of plunger in mm
//calculations
V1=Vpbes+(%pi/4)*((df/10)^2)*(lf/10)+Vfiv;...................//Total initial fuel volume
delV=cc*(p1-p2)*V1;................//Change in volume due to compression
displu=delV+Vfd;.....................//Total displacement of plunger
disp(displu,"Total displacement of plunger in cc :")
lp=(displu*4)/(%pi*(dp/10)^2);.............//Effective stroke of plunger
disp(lp,"Effective stroke of plunger in mm:")
