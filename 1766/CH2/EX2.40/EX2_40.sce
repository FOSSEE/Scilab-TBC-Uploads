clc;funcprot(0);//Example 2.40
//Initilisation of Variables
h=22.7;....//Heat transfer coefficient between air and surface ofrod in W/m^2*K
d=0.025;....//Diameter of rod in m
Ta=27;...//Temparature of air in degrees celcius
x=0.076;....//temparature at two points in m
T1=126;...//Temparature at 1st point in degrees celcius
T2=91;...//Temparature at 2nd point in degrees celcius
//calculations
teta1=T1-Ta;....//at distance x1 from the furnance
teta2=T2-Ta;....//at distance x2 from the furnance
m=log(teta1/teta2)/x;....//
K=(4*h)/(m^2*d);....//thermal conductivity of the rod in W/m*degrees celcius
disp(K,"thermal conductivity of the rod in W/m*degrees celcius:")
