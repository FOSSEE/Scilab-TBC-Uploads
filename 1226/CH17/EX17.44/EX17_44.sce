clc;funcprot(0);//EXAMPLE 17.44
// Initialisation of Variables
D=0.34;..............//Engine bore in m
k=0.5;...............//Four stroke engine
n=1;..................//No of cylinders
L=0.44;................//Engine stroke in m
Ne=400;................//Engine rpm
aic=465;..............//Area of indicator diagram in mm^2
l=60;..................//Length of diagram in mm
s=0.6;...............//Spring constant in bar/mm
W=950;.................//Load of dynamometer in N
CD=7460;................//Dynamometer constant
mf=10.6;................//Fuel used in kg/h
Ca=49500;.................//Calorific value of fuel in kJ/kg
mw=25;...................//Cooling water circulated in kg/min
cpw=4.18;..................//Specific heat capacity of water in kJ/kgC
delt=25;..................//Rise in temperature of water
//Mass analysis of fuel
C=84;..................//Percentage of carbon
H=15;..................//Percentage of hydrogen
In=1;..................//Percentage of incombustible
//Volume analysis of exhaust gases
CO2=9;..................//Percentage of caron dioxide
O=10;..................//Percentage of oxygen
N=81;..................//Percentage of nitrogen
tg=400;................//Temperature of exhaust gases in C
cpg=1.05;..............//Specific heat of exhaust gases in kJ/kgC
tr=25;.................//Temperature of room in C
ppst=0.03;..............//Partial pressure of steam in exhaust gases in bar
cpst=2.1;.................//Specific heat of superheated steam in kJ/kgC
//Calculations
pmi=(aic*s)/l;................//Mean effective pressure in bar
IP=(n*pmi*L*D*D*k*10*Ne*(%pi/4))/6;...............//Indicated power in kW
BP=(W*Ne)/CD;.......................//Brake power in kW
FP=IP-BP;...........................//Frictional power in kW
hf=(mf/60)*Ca;...................//Heat supplied in kJ per min
hbp=BP*60;.....................//Heat equivalent of Brake power in kW
hfp=FP*60;......................//heat equivalent of frictional power in kW
hcw=mw*cpw*delt;..................//Heat carried away by cooling water
ma1=(N*C)/(33*(CO2));...........//Mass of air supplied per kg of fuel
mg1=ma1+1;.......................//Mass of exhaust gases per kg of fuel
mg=mg1*(mf/60);.................//Mass of exhaust gas formed per min
mst1=9*(H/100);.................//Mass of steam formed per kg of fuel
mst=mst1*(mf/60);..................//Mass of steam formed per min
mdg=mg-mst;.......................//Mass of dry exhaust gas 
hex=mdg*cpg*(tg-tr);...............//Heat carried by exhaust gases
hst=(2545.5+(cpst*(tg-24.1)))*mst;................//Heat carried by steam in exhaust gases in kJ/kg.....The values are from steam tables corresponding to the partial pressure 0.03 and temperature 400 Celsius
ha=hf-(hbp+hfp+hcw+hex+hst);.....................//Unaccounted heat
pf=100;pbp=(hbp/hf)*100;pfp=(hfp/hf)*100;pcw=(hcw/hf)*100;pex=(hex/hf)*100;pa=(ha/hf)*100;pst=(hst/hf)*100;
printf("\n\n")
printf("HEAT BALANCE TABLE\n")
printf("_______________________________________________________________________\n")
printf("Item                                          kJ               Percent\n")
printf("_______________________________________________________________________\n")
printf("Heat supplied by fuel                       %d             %f\n",hf,pf)
printf("Heat absorbed in BP                         %d             %f\n",hbp,pbp)
printf("Heat lost by FP                             %d              %f\n",hfp,pfp)
printf("Heat taken away by cooling water            %d             %f\n",hcw,pcw)
printf("Heat carried away by dry exhaust gases      %d             %f\n",hex,pex)
printf("Heat carried away by steam in exhaust gases %d              %f\n",hst,pst)
printf("Unaccounted heat                            %d               %f\n",ha,pa)
printf("_____________________________________________________________________")
