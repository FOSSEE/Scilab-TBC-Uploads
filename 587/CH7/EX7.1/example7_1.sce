clear;
clc;

//Example7.1[Flow of hot oil over a Flat Plate]
//Given:-
T_oil=60;//Temp of engine oil[degree Celcius]
T_plate=20;//Temp of flat plate[degree Celcius]
Rec=5*10^5;//Critical reynolds number for laminar flow
Tf=(T_oil+T_plate)/2;//Film temperature[degree Celcius]
v=2;//[m/s]
//Properties of engine oil at film temperature
rho=876;//[kg/m^3]
Pr=2962;//Prandtl number
k=0.1444;//[W/m.degree Celcius]
nu=2.485*10^(-4);//dynamic viscosity[m^2/s]
L=5;//Length of plate[m]
ReL=(v*L)/nu;
if(ReL<Rec) then,
    disp("We have laminar flow over the entire plate")
    Cf=1.33*(ReL^(-0.5));
    disp(Cf,"The average friction coefficient is")
    //Pressure Drag is zero and thus Cd=Cf for parallel floe over a flat plate
    Fd=Cf*5*1*rho*(v^2)/2;//[N]
    disp("N",Fd,"The drag force acting on the plate per unit width is")
else,
    disp("flow is turbulent")
end
Nu=0.664*(ReL^(0.5))*(Pr^(1/3));//Nusselt Number
disp(ceil(Nu),"Nusselt Number is")
h=k*Nu/L;//[W/m^2.degree Celcius]
disp("W/m^.degree Celcius",h,"Convective heat transfer coefficient is")
Q=h*(5*1)*(T_oil-T_plate);//[W]
disp("W",round(Q),"Heat flow rate is")