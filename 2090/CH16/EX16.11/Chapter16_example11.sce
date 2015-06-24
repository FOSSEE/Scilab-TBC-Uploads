clc
clear
//Input data
bp=30;//The brake power in kw
mf=10;//Mass flow rate of fuel in kg/h
CV=42000;//Calorific value of the fuel in kJ/kg
mw=9;//Mass flow rate of water in kg/min
Tr=60;//Rise in temperature of the cooling water in degree centigrade
mwe=9.5;//Mass flow rate of water through exhaust gas calorimeter in kg/min
Tc=40;//Rise in temperature when passing through calorimeter in degree centigrade
Te=80;//Temperature of exhaust gas leaving the calorimeter in degree centigrade
a=20;//Air fuel ratio
T=17;//Ambient temperature in degree centigrade
Cpw=4.18;//Specific heat of water in kJ/kgK
Cpg=1;//Mean specific heat of gas in kJ/kgK

//Calculations
Qf=(mf/60)*CV;//Heat supplied by fuel in kJ/min
Qbp=bp*60;//Heat equvalent to bp in kJ/min
Qc=mw*Cpw*Tr;//Heat carried away by the jacket cooling water in kJ/min
mg=(mf/60)+(mf/60)*a;//Mass of exhaust gas formed in kg/min
Qe=(mwe*Cpw*Tc)+(mg*Cpg*(Te-T));//Heat carried away by exhaust gas in kJ/min
Qu=Qf-(Qbp+Qc+Qe);//Unaccounted heat in kJ/min
x=((Qbp/Qf))*100;//Percentage heat in bp
y=(Qc/Qf)*100;//Percentage loss of cooling water 
z=(Qe/Qf)*100;//Percentage loaa of heat to exhaust gases
k=(Qu/Qf)*100;//Percentage heat loss unaccounted

//Output 
printf( '----------------------------------------------------------------------------------------------------\n       Heat input      kJ/min     percent         Heat expenditure              kJ/min        percent    \n      ---------------------------------------------------------------------------------------------------\n  Heat supplied by fuel  %3.0f      100      (a) Heat in bp                   %3.0f            %3.2f     \n                                             (b) Heat loss to cooling water   %3.0f             %3.2f    \n                                             (c) Heat to exhaust gases        %3.0f            %3.2f     \n                                              (d)Unaccounted heat loss         %3.0f            %3.2f    \n        total              %3.0f    100                 total                   %3.0f           100   \n --------------------------------------------------------------------------------------------------- ',Qf,Qbp,x,Qc,y,Qe,z,Qu,k,Qf,Qf)

