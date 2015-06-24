clc;funcprot(0);//EXAMPLE 17.43
// Initialisation of Variables
I=210;.....................//Output of generator in A
V=200;.....................//Generator voltage in V
etag=0.82;.................//Generator efficiency 
mf=11.2;....................//Fuel used in kg/h
C=42600;.......................//Calorific value of fuel in kJ/kg
afr=18;....................//Air fuel ratio
mc=580;.....................//Mass of water through calorimeter in kg/h
delt=36;....................//Temperature raise in C
tg=98;........................//Temperature of exhaust in C
ta=20;.......................//Ambient temperature in C
phcw=0.32;.....................//Heat lost to cooling jacket is 32% of heat supplied
cpe=1.05;...................//Specific heat of exhause gases in kJ/kgK
cpw=4.18;...................//Specific heat of water in kJ/kgK
//Calculations
pow=V*I;......................//Total power generated in W
BP=(pow/1000)/etag;..................//Brake power in kW
hf=(mf/60)*C;...................//Heat supplied to the engine
hbp=BP*60;.........................//Heat equivalent of BP
mg=(mf/60)*(afr+1);...............//Mass of exhaust gases formed per min in kg
hg=((mc/60)*cpw*(delt))+(mg*cpe*(tg-ta));..........//Heat carried by exhaust gases per min
hcw=phcw*hf;...................//Heat lost to cooling jacket
ha=hf-(hcw+hg+hbp);...................//Unaccounted heat
pf=100;pbp=(hbp/hf)*100;pcw=(hcw/hf)*100;pg=(hg/hf)*100;pa=(ha/hf)*100
printf("\n\n")
printf("HEAT BALANCE TABLE\n")
printf("_______________________________________________________________________\n")
printf("Item                                      kJ                  Percent\n")
printf("_______________________________________________________________________\n")
printf("Heat supplied by fuel                     %d             %f\n",hf,pf)
printf("Heat absorbed in BP                       %d             %f\n",hbp,pbp)
printf("Heat taken away by cooling water          %d             %f\n",hcw,pcw)
printf("Heat carried away by exhaust gases        %d             %f\n",hg,pg)
printf("Unaccounted heat                          %d             %f\n",ha,pa)
printf("_____________________________________________________________________")


