clc;funcprot(0);//EXAMPLE 17.39
// Initialisation of Variables
Cpw=4.18;..............//Specific heat of water in kJ/kgK
n=1;................//No of cylinders
N=350;.......//Engine rpm
pmi=3.1;..........//Mean effective pressure in bar
bl=640;..........//Brake load in N
mf=1.52;............//Fuel consumption in kg
mw=162;..............//Mass of cooling water
tw1=30;...............//Water inlet temperature in C
tw2=55;................//Water outlet temperature in C
ma=32;..................//Mass of air used per kg of fuel in kg
tr=25;.................//Room temperature in C
tg=305;.................//Exhaust temperature in C
D=0.2;.................//Engine bore in m
L=0.28;.................//Engine stroke in m
Db=1;......................//Brake drum diameter in m
ms=1.4;......................//Mass of steam formed per kg of fuel exhaust in kg
C=43900;...................//Calorirfic value of fuel in kJ/kg
Cps=2.09;..................//Specific heat of steamm in exhaust in kJ/kgK
Cpg=1.0;...................//Specific heat of dry exhaust gases in kJ/kgK
k=1;....................//Two stroke engiine
t=20;.....................//Duration of testing in min
//Calculations
IP=(n*pmi*N*D*D*L*k*10*(%pi/4))/6;...................//Indicated power in kW
disp(IP,"Indicated power in kW:")
BP=(bl*%pi*Db*N)/(60*1000);......................//Brake power in kW
disp(BP,"Brake power in kW:")
//Heat supplied
hf=mf*C;................//heat supplied by fuel
hip=IP*60*t;...........//Heat equivalent of BP in kJ/min
hcw=mw*Cpw*(tw2-tw1);..........//Heat carried away by cooling water
mg=mf+(ma*mf);....................//Mass of exhaust gases in kg/min
mst=mf*ms;..................//Mass of steam formed
hg=(mg-mst)*Cpg*(tg-tr);..........//Heat carried by exhaust gasses
hst=mst*(417.5+2257.9+(Cps*(305-99.6)));....................//Heat carried by exhaust steam, the obtained values are from steam table and hence are constants at NTP
ha=round(hf)-round(hip+hg+hst+hcw);............//Unaccounted heat
pf=100;pip=(hip/hf)*100;pcw=(hcw/hf)*100;pg=(hg/hf)*100;pa=(ha/hf)*100;pst=(hst/hf)*100;
printf("\n\n")
printf("HEAT BALANCE TABLE\n")
printf("_______________________________________________________________________\n")
printf("Item                                          kJ               Percent\n")
printf("_______________________________________________________________________\n")
printf("Heat supplied by fuel                       %d             %f\n",hf,pf)
printf("Heat absorbed in IP                         %d             %f\n",hip,pip)
printf("Heat taken away by cooling water            %d             %f\n",hcw,pcw)
printf("Heat carried away by dry exhaust gases      %d             %f\n",hg,pg)
printf("Heat carried away by steam in exhaust gases %d             %f\n",hst,pst)
printf("Unaccounted heat                            %d             %f\n",ha,pa)
printf("_____________________________________________________________________")
