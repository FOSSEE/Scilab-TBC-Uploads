//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.5-1
//Principles of Steady State Heat Transfer
//given data
//si units
//nomenclature of unmentioned specifications similar to previous example
mub=2.6e-5;//viscosity of air 
Tw=488.7;//temp of water
k=0.03894;
Pr=0.686;//prandtl number
muw=2.64e-5;//viscosity of water
Mair=28.97;//mol wt of air
P1=206.8;//inlet pressure of air
Patm=101.33;//atmospheric pressure of air
V=22.414;//mol vol of air
T0=273.2;//STP temp
T1=477.6;//temp of air
rhoair=Mair*(1/V)*(P1/Patm)*(T0/T1);//density of air
D=0.0254;//diameter of tube
v=7.62;//vel of air
Re=(D*v*rhoair)/mub;//reynolds number
Nu=0.027*(Re^0.8)*(Pr^(1/3))*((mub/muw)^0.14);//nusselts number
hl=Nu*k/D;//HT coeffiecient
qbyA=hl*(Tw-T1);//flux
mprintf("heat flux= %f W/m2",qbyA)
mprintf(" HT coefficient= %f W/m2 K",hl)
