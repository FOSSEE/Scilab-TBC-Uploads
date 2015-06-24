//Exam:7.3
clc;
clear;
close;
t_1=736;//Temperature in °C
t_2=782;//Temperature in °C
T_1=t_1+273;//Temperature in K
T_2=t_2+273;//Temperature in K
D_1=2*10^(-13);//Coefficient of diffusion at T_1 (in m2/s)
D_2=5*10^(-13);//Coefficient of diffusion at T_2 (in m2/s)
k=1.38*10^(-23);//in J/K
//log(d_1)=log(d_o)-E/(k*T_1)
//log(d_2)=log(d_o)-E/(k*T_2)
E=(log(D_1)-log(D_2))/((1/(k*T_1))-(1/(k*T_2)));//
disp(E,'activation energy(in J)=');
D_o=2*10^(-13)/exp(E/(k*T_1));
disp(D_o,'constant of the equation(in m2/s)=')
t_4=500;//Temperature in °C
T_4=t_4+273;//Temperature in °K
D_4=D_o*exp(E/(k*T_4));//diffusion coefficient at 500°C
disp(D_4,'diffusion coefficient at 500°C(in m2/s)=')