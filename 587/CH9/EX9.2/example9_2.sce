clear;
clc;

//Example9.2[Cooling of a Plate in different orientaions]
L=0.6;//side of square plate[m]
T_surr=30;//[degree Celcius]
Tp=90;//Temp of plate[degree Celcius]
Tf=(Tp+T_surr)/2;//Film temperature[degree Celcius]
//Properties of air at Tf
k=0.02808;//[W/m.degree Celcius]
Pr=0.7202;//Prandtl number
nu=1.896*10^(-5);//Kinematic viscosity[m^2/s]
b=1/(Tf+273);//[K^-1]
g=9.81;//Acc due to gravity[m/s^2]
//Solution (a)
Lc_a=L;//Characteristic length
Ra_1=g*b*(Tp-T_surr)*(L^3)*Pr/(nu^2);
disp(Ra_1,"(a) The Rayleigh no is")
Nu_a=((0.825+(0.387*(Ra_1^(1/6)))/((1+((0.492/Pr)^(9/16)))^(8/27)))^2);
disp(Nu_a,"The natural convection Nusselt number is")
h_a=k*Nu_a/L;//[W/m^2.degree Celcius]
As=L^2;//[m^2]
Q_a=h_a*As*(Tp-T_surr);//[W]
disp("W",ceil(Q_a),"Heat loss to the surrounding is")
//Solution (b)
Lc_b=As/(4*L);//[m]
Ra_2=g*b*(Tp-T_surr)*(Lc_b^3)*Pr/(nu^2);
disp(Ra_2,"(b) The Rayleigh number is")
Nu_b=0.54*(Ra_2^(1/4));
disp(Nu_b,"The natural convection Nusselt number is")
h_b=k*Nu_b/Lc_b;//[W/m^2.degree Celcius]
Q_b=h_b*As*(Tp-T_surr);//[W]
disp("W",round(Q_b),"Heat Loss is")
//Solution (c)
Lc_c=Lc_b
Nu_c=(0.27*Ra_2^(1/4));
disp(Nu_c,"(c) Natural convection Nusselt number")
h_c=k*Nu_c/Lc_c;//[W/m^2.degree Celcius]
Q_c=h_c*As*(Tp-T_surr);//[W]
disp("W",Q_c,"Heat Loss is")
Q_rad=e*(5.67*10^(-8))*As*(((Tp+273)^4)-((T_surr+273)^4));//[W]
disp("W",round(Q_rad),"Radiation heat loss is")
