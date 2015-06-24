clc;funcprot(0);//Example 4.1
//Initilisation of Variables
L=0.4;.......//Length of vertical square plate in m
Tw=130;.....//Uniform temparature in degrees celcius
Ta=25;.....//Ambient air temparature in degrees celcius
Pr=0.697;.....//Prandtl number
K=0.03;.....//Thermal conductivity of square plate in W/mK
v=20.75*10^-6;......//kinematics viscosity of the fluid m^2/s
g=9.8;.....//Gravitational accelaration in m/s^2
//calculations
Tf=(Tw+Ta)/2;.......//Filim temparature in deges celcius
B=1/(Tf+273);......//Coefficient of volume expansion in 1/K
Gr= (g*B*(Tw-Ta)*(L^3))/v^2;......//Grashof number 
Nu=0.59*(Gr*Pr)^(1/4);.....//Nusselt number 
h=(Nu*K)/L;........//Heat transfer coefficent in W/m^2K
Q=2*h*(L^2)*(Tw-Ta);......//Heat transfer rate from both sides in W
Nu1=0.68+((0.67*(Gr*Pr)^0.25)/[1+((0.492/Pr)^(9/16))]^(4/9));.....//Churchill corrrelation grashof number 
h1=(Nu1*K)/L;........//Rate of heat convection in W/m^2K
disp(h1,"Rate of heat convection in W/m^2K:")
