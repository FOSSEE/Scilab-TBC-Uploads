clc;funcprot(0);//Example 2.6
//Initilisation of Variables
r1=0.01;.......//radius of insulated cable in m
T=80;.....//surface temparature of insulated cable in degrees celcius
h=5;....//convectional heat transfer coefficient in W/m^2*K
Ta=30;....//temparature of air surrounding cable in degrees celcius
K=0.2;..//thermal conductivity of insulating material in W/m*K
L=1;....//length of insulating material in m^2
//Calculations
A=2*%pi*r1*L;....//Area of insulated material in m^2
Q1=h*A*(T-Ta);....//heat transfer rate without the insulation in W
r2=K/h;....//Optimal radius of insulation in m
R1=log(r2/r1)/(2*%pi*K*L);....//resistance of insulated cable in degrees celcius /W
R2=1/(2*%pi*r2*L*h);....//resistance of insulated cable in degrees celcius /W
T1=(Q1*(R1+R2))+Ta;....//Surface temparature of cable in degrees celcius
disp(T1,"a.Surface temparature of cable in degrees celcius:")
disp((r2-r1)*1000,"b.thickness of insulation in m:")
