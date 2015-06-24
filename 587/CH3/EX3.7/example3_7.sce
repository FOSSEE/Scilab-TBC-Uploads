clear;
clc;

//Example3.7[Heat Transfer to a Spherical Container]
//Radiation effect is being considered. For the black tank emissivity=1
//Given:-
k=15;//thermal conductivity of stainless steel[W/m.degree Celcius]
T_ice=0+273;//temeperature of iced water[K]
T_tank=22+273;//temperature of tank stored at room temperature[K]
h_in=80;//Heat Transfer Coefficient at the inner surface of the tank[W/m^2.degree Celcius]
h_out=10;//Heat Transfer Coefficient at the outer surface of the tank[W/m^2.degree Celcius]
heat_f=333.7;//Heat of fusion of water at atmospheric pressure[kJ/kg]
e=1;//emissivity of tank
sigma=5.67*(10^(-8));//Stefan's [W/m^2.K^4]
D1=3;//inner diameter[m]
D2=3.04;//Outer diameter[m]
//Solution:-
//a)
A1=(%pi)*(D1^2);//Inner Surface area of the tank[m^2]
A2=(%pi)*(D2^2);//outer Surface area of the tank[m^2]
disp("The radiation heat transfer coefficient is given by ")
disp("h_rad=e*sigma*((T2^2)+(T_tank^2))*(T2+T_tank)")
disp("But we dont know the outer surface temperature T2 of the tank. hence we assume a T2 value")
disp("since heat transfer inside the tank is larger ")
T2=5+273;//[K]
disp("K",T2,"Therefore taking T2 =")
h_rad=e*sigma*((T2^2)+(T_tank^2))*(T2+T_tank);//[W/m^2.K]
disp("W/m^2.degree Celcius",h_rad,"The radiation heat transfer coefficient is determined to be")
//Individual Thermal Resistances Offered
R_in=1/(h_in*A1);//Resistance to convetion from inner side of tank[degree Celcius/W]
R_sphere=((D2-D1)/2)/(4*%pi*k*(D1/2)*(D2/2));//Resistance to conduction due to ice sphere[degree Celcius/W]
R_out=1/(h_out*A2);//Resistance to convection from outer side of tank[degree Celcius/W]
R_rad=1/(h_rad*A2);//Resistance to radiation heat transfer[degree Celcius/W]
//R_out and R_rad are in parallel connection,
R_eq=(1/((1/R_out)+(1/R_rad)));//[degree Celcius/W]
//R_in,R_sphere and R_eq are connected in series
R_total=R_in+R_sphere+R_eq;//[degree Celcius/W]
Q_=(T_tank-T_ice)/R_total;//[W]
disp("W",Q_,"The steady rate of heat transfer to the iced water is")
disp("We determine outer surface temperature to check the validity of assumption")
T2=T_tank-(Q_*R_eq);//[K]
disp("K",T2)
disp("which is sufficiently close to 278 K")
//b)
delta_t=24;//Time duration[h]
Q=Q_*delta_t*(3600/1000);//[kJ]
disp("kJ",Q,"The total amount of heat transfer during a 24 hour period is")
//It takes 333.7 kJ of energy to melt 1kg of ice at 0 degree Celcius
m_ice=Q/heat_f;//[kg]
disp("kg",m_ice,"The amount of ice that will melt during 24h period is")
