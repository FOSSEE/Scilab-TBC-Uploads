clear;
clc;

//Example11.1[Overall Heat Transfer Coefficient of a Heat Exchanger]
D_in=0.02;//Diameter of inner tubes[m]
Di_out=0.03;//Inner Diameter of Outer tubes[m]
mw=0.5;//Mass Flow Rate of water[kg/s]
mo=0.8;//Mass Flow rate of oil[kg/s]
Tw=45;//Average Temp of water[degree Celcius]
To=80;//Average Temp of oil [degree Celcius]
//Properties of water at Tw
rho_w=990.1;//[kg/m^3]
Pr_w=3.91;//Prandtl Number
k_w=0.637;//[W/m.degree Celcius]
nu_w=0.602*10^(-6);//[m^2/s]
//Properties of oil at To
rho_o=852;//[kg/m^3]
Pr_o=499.3;//Prandtl Number
k_o=0.138;//[W/m.degree Celcius]
nu_o=3.794*10^(-5);//[m^2/s]
//Solution:-
Vw=mw/(rho_w*(%pi*(D_in^2)/4));//[m/s]
disp("m/s",Vw,"The average velocity of water in the tube is")
Re_w=Vw*D_in/nu_w;
disp(Re_w,"The Reynolds number for flow of water in the tube is")
Nu_w=0.023*(Re_w^(0.8))*(Pr_w^(0.4));
disp(Nu_w,"The nusselt no for turbulent water flow")
hi=k_w*Nu_w/D_in;//[W/m^2.degree Celcius]
//For oil flow
Dh=Di_out-D_in;//Hydraulic Diameter for the annular space[m]
Vo=mo/(rho_o*(%pi*((Di_out^2)-(D_in^2))/4));//[m/s]
disp("m/s",Vo,"The average velocity for flow of oil is")
Re_o=Vo*Dh/nu_o;
disp(Re_o,"The Reynolds number for flow of oil is")
Nu_o=5.45;//Nusselt number for flow of oil usign the table 11.3 and interpolating for value corresponding to Di_out/D_in
ho=Nu_o*k_o/Dh;//[W/m^2.degree Celcius]
U=(1/((1/hi)+(1/ho)));//[W/m^2.degree Celcius]
disp("W/m^2.degree Celcius",U,"The overall heat transfer Coefficient for the given heat exchanger is")
