clc;funcprot(0);//EXAMPLE 17.37
// Initialisation of Variables
n=1;......................//No of cylinders
D=0.3;....................//Engine bore in m
L=0.45;....................//Engine stroke in m
mf=8.8;...................//Fuel consumption in kg/h
C=41800;...................//Calorific value of fuel in kJ/kg
N=200;....................//Engine rpm
pmi=5.8;....................//Mean effective pressure in bar
bl=1860;....................//Brake load in N
Db=1.22;...................//Diameter of brake drum in m
k=0.5;........................//four stroke engine
mw=650;......................//Mass of cooling water in kg
cpw=4.18;....................//Specific heat capacity of water
delt=22;......................//Temperature rise
//Calculations
IP=(n*L*D*D*k*10*pmi*N*(%pi/4))/6;...............//Indicated power in kW
BP=(bl*%pi*Db*N)/(60*1000);..................//Brake power in kW
etamech=BP/IP;............//Mechanical efficiency
disp(etamech*100,"Mechanical efficiency (in %):")
etathb=BP/((mf/3600)*C);...................//Brake thermal efficiency
disp(etathb*100,"Brake thermal efficiency (in %):")
//Heat supplied
hip=IP*3600;...........//Heat equivalent of IP in kJ/h
hcw=mw*cpw*delt;..........//Heat carried away by cooling water
hf=mf*C;................//heat supplied by fuel
hex=hf-hip-hcw;..........//Heat carried by exhaust gasses
pf=100;pip=(hip/hf)*100;pcw=(hcw/hf)*100;pex=(hex/hf)*100
printf("\n\n")
printf("HEAT BALANCE TABLE\n")
printf("_______________________________________________________________________\n")
printf("Item                                      kJ                  Percent\n")
printf("_______________________________________________________________________\n")
printf("Heat supplied by fuel                     %d             %f\n",hf,pf)
printf("Heat absorbed in IP                       %d             %f\n",hip,pip)
printf("Heat taken away by cooling water          %d             %f\n",hcw,pcw)
printf("Heat carried away by exhaust gases        %d             %f\n",hex,pex)
printf("_____________________________________________________________________")
