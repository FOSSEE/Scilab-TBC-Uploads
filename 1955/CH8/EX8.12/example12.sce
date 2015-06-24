clc
clear
//input data
Q=0.04//Discharge of the pump design in m^3/s
Ns=0.075//Specific speed in rev
b22=(180-120)//Outlet angle with the normal in degree
H=35//Distance to which pumping of water is done in m
Dp=0.15//Diameter of suction and delivery pipes in m
L=40//Combined length of suction and delivery pipes in m
WD=1/10//Width to diameter ratio at outlet of impeller 
f=0.005//Friction factor 
g=9.81//Acceleration due to gravity in m/s^2
nh=0.76//Hydraulic effficiency neglecting the slip
n=0.06//Percentage occupied by blades on circumference area

//calculations
A=(3.1415/4)*(Dp^2)//Area of flow in pipe in m^2
V=Q/A//Velocity in the pipes in m/s
OL=3*V^2/(2*g)//Other loses in the pipes in m
TL=(4*f*L*V^2/(2*g*Dp))+(OL)//Total loses in a pipe in m
TH=TL+H//Total required head in m
N=(Ns*((g*H)^(3/4)))/((Q)^(1/2))//The speed of the pump in rev/s
Ao=3.1415*WD*(1-n)//Flow area perpendicular to impeller outlet periphery in terms of D^2 in m^2            In this the area is calculated using only the circumferential area without blades
Cr2=Q/Ao//Flow velocity through impeller at outlet in m/s
U2=3.1415*N//Outlet tangential impeller velocity in m/s in terms of D
Cx2=(g*H)/(U2*nh)//Absolute whirl velocity in m/s

//The following steps are for calculating the cubic root equation in D
//This is obtained by solving    tand(b22)=(Cr2/(Cx2-U2))   all values are substituted in terms of D
//The final equation which is obtained is      D^3-0.0495D+0.0008=0
//The above equation is solved using the following formulae

a=0//Coefficient of D^2 in the above equation
b=-0.0511//Coefficient of D in the above equation
c=0.00083//Constant term in above equation
q=c+((2*(a^3))/27)-(a*b/3)//Constant in solving the cubic equation
p=((3*b)-(a^2))/3//Constant in solving the cubic equation
d=(p/2)^2+(q/3)^3//Constant in solving the cubic equation
u=((-q/2)+(d^(1/2)))^(1/3)//Constant in solving the cubic equation
v=((-q/2)-(d^(1/2)))^(1/3)//Constant in solving the cubic equation
D=(u+v)/2//Impeller diameter in m

//output
printf('The pump impeller diameter is %3.3f m',D)
