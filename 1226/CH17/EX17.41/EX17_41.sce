clc;funcprot(0);//EXAMPLE 17.41
// Initialisation of Variables
Cpw=4.18;..............//Specific heat of water in kJ/kgK
n=1;................//No of cylinders
N=350;.......//Engine rpm
pmi=2.74;..........//Mean effective pressure in bar
bl=600;..........//Brake load in N
mf=4.22;............//Fuel consumption in kg
mw=495;..............//Mass of cooling water
tw1=13;...............//Water inlet temperature in C
tw2=38;................//Water outlet temperature in C
ma=135;..................//Mass of air used in kg/h
tr=20;.................//Room temperature in C
tg=370;.................//Exhaust temperature in C
D=0.2;.................//Engine bore in m
L=0.28;.................//Engine stroke in m
Db=1;......................//Brake drum diameter in m
C=44670;...................//Calorirfic value of fuel in kJ/kg
Cps=2.093;..................//Specific heat of steamm in exhaust in kJ/kgK
Cpg=1.005;...................//Specific heat of dry exhaust gases in kJ/kgK
k=1;....................//Two stroke engiine
t=60;.....................//Duration of testing in min
perh=15;.................//Percentage of H2 in the fuel
//Calculations
IP=(n*pmi*N*D*D*L*k*10*(%pi/4))/6;...................//Indicated power in kW
disp(IP,"Indicated power in kW:")
BP=(bl*%pi*Db*N)/(60*1000);......................//Brake power in kW
etaith=(IP)/((mf/3600)*C);.................//Indicated thermal efficiency
disp(etaith*100,"Indicated thermal efficiency in %:")
//Heat supplied
hf=(mf/t)*C;................//heat supplied by fuel
hbp=BP*t;...........//Heat equivalent of BP in kJ/min
hcw=(mw/60)*Cpw*(tw2-tw1);..........//Heat carried away by cooling water
mg=(mf+ma)/t;....................//Mass of exhaust gases in kg/min
mst=9*(perh/100)*(mf/60);..................//Mass of steam formed
mdg=mg-mst;..............................//Mass of dry exhaust gases per min
hg=(mdg)*Cpg*(tg-tr);..........//Heat carried by exhaust gasses
hst=mst*(417.5+2257.9+(Cps*(305-99.6)));....................//Heat carried by exhaust steam, the obtained values are from steam table and hence are constants at NTP
ha=round(hf)-round(hbp+hg+hst+hcw);............//Unaccounted heat
pf=100;pbp=(hbp/hf)*100;pcw=(hcw/hf)*100;pg=(hg/hf)*100;pa=(ha/hf)*100;pst=(hst/hf)*100;
printf("\n\n")
printf("HEAT BALANCE TABLE\n")
printf("_______________________________________________________________________\n")
printf("Item                                          kJ               Percent\n")
printf("_______________________________________________________________________\n")
printf("Heat supplied by fuel                       %f             %f\n",hf,pf)
printf("Heat equivalent of BP                       %f             %f\n",hbp,pbp)
printf("Heat taken away by cooling water            %f             %f\n",hcw,pcw)
printf("Heat carried away by dry exhaust gases      %f             %f\n",hg,pg)
printf("Heat carried away by steam in exhaust gases %f             %f\n",hst,pst)
printf("Unaccounted heat                            %f             %f\n",ha,pa)
printf("_____________________________________________________________________")
