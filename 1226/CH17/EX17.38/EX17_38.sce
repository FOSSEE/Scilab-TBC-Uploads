clc;funcprot(0);//EXAMPLE 17.38
// Initialisation of Variables
r=15;................//Compression ratio
n=1;...................//No of cylinders
mf=10.2;..................//Fuel consumption in kg/h
C=43890;.................//Calorific value of fuel in kJ/kg
ma=3.8;.................//Consumption of air in kg/min
N=1900;...................//Engine rpm
T=186;....................//Torque on brake drum in Nm
mw=15.5;.................//Mass of cooling water used in kg/min
delt=36;..................//temperature rise
tg=410;..................//Exhaust gas temperature in Celsius
tr=20;...................//Room temperature in Celsius
cp=1.17;.................//Specific heat capacity for exhaust gases kJ/kgK
cpw=4.18;..................//Specific heat capacity for water in kJ/kgK
//calculations
BP=(2*%pi*N*T)/(60*1000);................//Brake power in kW
disp(BP,"Brake power in kW:")
bsfc=mf/BP;.............................//Brake specific fuel consumption in kg/kWh
disp(bsfc,"Brake specific fuel consumption in kg/kWh:")
etabth=BP/((mf/3600)*C);....................//Brake thermal efficiency
disp(etabth*100,"Brake thermal efficiency in %:")
//Heat supplied
mg=(mf/60)+ma;....................//Mass of exhaust gases in kg/min
hbp=BP*60;...........//Heat equivalent of BP in kJ/min
hcw=mw*cpw*delt;..........//Heat carried away by cooling water
hf=(mf/60)*C;................//heat supplied by fuel
hex=mg*cp*(tg-tr);..........//Heat carried by exhaust gasses
ha=round(hf)-round(hbp+hex+hcw);............//Unaccounted heat
pf=100;pbp=(hbp/hf)*100;pcw=(hcw/hf)*100;pex=(hex/hf)*100;pa=(ha/hf)*100;
printf("\n\n")
printf("HEAT BALANCE TABLE\n")
printf("_______________________________________________________________________\n")
printf("Item                                      kJ                  Percent\n")
printf("_______________________________________________________________________\n")
printf("Heat supplied by fuel                     %d             %f\n",hf,pf)
printf("Heat absorbed in BP                       %d             %f\n",hbp,pbp)
printf("Heat taken away by cooling water          %d             %f\n",hcw,pcw)
printf("Heat carried away by exhaust gases        %d             %f\n",hex,pex)
printf("Unaccounted heat                          %d             %f\n",ha,pa)
printf("_____________________________________________________________________")
