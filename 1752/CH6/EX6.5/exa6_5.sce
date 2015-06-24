//Exa 6.5
clc;
clear;
close;
//given data
rho=0.8;// in kg/m^3;
C_p=1.01;// in KJ/kg K
Pr=0.684;
d=15*10^-2;// diameter in meter
K=0.035;// in W/mK
delta=2.78*10^-5;// in m^2/s
g=9.81;
x=2;// in m
T_s=250;// in degree C
T_infinite=30;// in degree C
T_f=(T_s+T_infinite)/2;// in degree C
T_f=T_f+273;// in K
Bita=1/T_f;
del_T=T_s-T_infinite;
disp("Heat Transfer (loss) from plate= heat loss from vertical part + heat transfer from horizontal part by convection + heat transfer by radiation ")

//Heat loss from vertical part by free convection

Gr=(g*Bita*del_T*x^3)/delta^2;
Ra=Gr*Pr;
//Since Ra>10^9, hence turbulent flow
// Formula Nu= h*x/K =0.13*Ra^(1/3)
h=0.13*Ra^(1/3)*K/x;// in W/m^2K
A=2*%pi*d;
q1=h*A*del_T;// w
q1=q1*10^-3;// in kW
disp("Heat loss from vertical part is : "+string(q1)+" kW")

//Heat loss for Horizontal part
// here
x=d;
Gr=(g*Bita*del_T*x^3)/delta^2;
Ra=Gr*Pr;
//Since Ra<10^9, hence laminar fluid flow
// Formula Nu= h*x/K =0.53*Ra^(1/4)
h=0.53*Ra^(1/4)*K/x;// in W/m^2K
A=%pi*d*8;
q2=h*A*del_T;// w
q2=q2*10^-3;// in kW
disp("Heat loss for horizontal part is : "+string(q2)+" kW")

//Heat loss by radiation
sigma=5.67*10^-8;
epsilon=0.65;// emissivity of steel
A=%pi*d*10;
T_s=T_s+273;// in K
T_infinite=T_infinite+273;// in K
q3=sigma*A*epsilon*(T_s^4-T_infinite^4);// in w
q3=q3*10^-3;// in kW
disp("Heat loss by radiation is : "+string(q3)+" kW")

//Total heat loss
theta=q1+q2+q3;
disp("Total heat loss is : "+string(theta)+" kW");


//Note : value of q3 and theta in the book is wrong so answer in the book is wrong






