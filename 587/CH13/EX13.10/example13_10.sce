clear;
clc;

//Example13.10[Heat Transfer through a Tubular Solar Collector]
k=0.02588;//[W/m.degree Celcius]
Pr1=0.7282,Pr2=0.7255;//Prandtl no
nu1=1.608*(10^(-5)),nu2=1.702*10^(-5);//[m^2/s]
T1=20,T2=40;//[degree Celcius]
Tavg=((T1+T2)/2)+273;//[K]
Do=0.1,L=1;//Dimensions of glass tube[m]
Di=0.05;//Inner diameter of tube[m]
Q_glass=30;//Rate of heat transfer from the outer surface of the glass cover[W]
g=9.81;//[m^2/s]
eo=0.9,ei=0.95;//Emissivity
//Solution:-
Ao=%pi*Do*L;//Heat transfer surface area of the glass cover[m^2]
disp(Ao,Tavg)
Ra_Do=g*Tavg*(T2-T1)*(Do^3)*Pr1/(nu1);
disp(Ra_Do,"The Rayleigh number is")
Nu=((0.6+((0.387*(Ra_Do^(1/6)))/((1+((0.559/Pr1)^(9/16)))^(8/27))))^2);
disp(Nu,"The nusselt number is")
ho=k*Nu/Do;//[W/m^2.degree Celcius]
Qo_conv=ho*Ao*(T2-T1);//[W]
Qo_rad=eo*5.67*10^(-8)*Ao*(((T2+273)^4)-((T1+273)^4));//[W]
Qo_total=Qo_conv+Qo_rad;//[W]
disp("W",Qo_total,"The total rate of heat loss from the glass cover 
Lc=(Do-Di)/2;//The characteristic length
Ai=%pi*Di*L;//[m^2]
//Assuming 
T_tube=54,T_cover=26;//Temperature of tube and glass cover[degree Celcius]
T_avg=((T_tube+T_cover)/2)+273;//[K]
Ra_L=g*T_avg*(T_tube-T_cover)*(Lc^3)*Pr2/(nu2);
disp(Ra_L,"The Rayleigh number in this case is")
F_cyl=((log(Do/Di))^4)/((Lc^3)*(((Di^(-3/5))+(Do^(-3/5)))^5));
k_eff=0.386*k*((Pr2/(0.861+Pr2))^(1/4))*((F_cyl*Ra_L)^(1/4));
disp("W/m.degree Celcius",k_eff,"The effective thermal conductivity is")
QL_conv=2*%pi*k_eff*(T_tube-T_cover)/(log(Do/Di));
disp("W",QL_conv,"The rate of heat transfer between the cylinders by convection is")
QL_rad=((5.67*10^(-8))*Ai*(((T_tube+273)^4)-((T_cover+273)^4)))/((1/ei)+(((1-eo)/eo)*(Di/Do)));
disp("W",QL_rad,"The radiation rate of heat transfer is")
QL_total=QL_conv+QL_rad;//[W]
disp("W",QL_total,"The total rate of heat loss from the glass cover is")