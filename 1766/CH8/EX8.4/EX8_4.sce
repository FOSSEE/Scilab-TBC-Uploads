clc;funcprot(0);//Example 8.4
//Initilisation of Variables
mh=8.5;......//mass flow rate of vapour in  kg/s
Th=80;.....//saturation temparature of vapour in degrees celcius
Tci=20;......//Initial temparature of cooling liquid in degrees celcius
mc=62;....//Mass flow rate of liquid in kg/s
U=500;..........//Overall heat transfer coefficient in W/m^2C
hfg=550;....//Latent heat of condensation of vapour in kJ/kg
Do=0.03;....//Outer diameter of tube in m
Di=0.025;....//inner diameter of tube in m
l=5;.....//Length of tube in m
Vc=1.8;....//Limit for a cooling liquid velocity in m/s
Cpc=4.2;....//Specific heat of cooling liquid in kJ/kgK
d=1000;.....//density of cooling liquid in kg/m^3
L=5;.....//Lemgth of the tubes in m
//calculations
Tco=((mh*hfg)/(mc*Cpc))+Tci;......//Finale temparature of cooling liquid in degrees celcius
LMTD=((Th-Tci)-(Th-Tco))/log((Th-Tci)/(Th-Tco));......//Log mean temparature diffrence of all fluids in K
N=(mh*hfg*10^3)/(U*LMTD*%pi*Do*L);.....//Required number of tubes 
Np=(4*mc)/(%pi*Di^2*Vc*d);......//Number of tubes in each pass
P=round(N)/Np;.......//Number of tube passes 
disp(round(N),"Required number of tubes:")
disp(round(P),"Number of passes:")
