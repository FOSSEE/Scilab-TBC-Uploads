clc
clear
//Input data
d=0.18;//The diameter of the cylinder in m
pi=3.141;//Mathematical constant of pi
L=0.24;//The length of the stroke in m
t=30;//Duration trail in min 
N=9000;//Number of revolutions 
Ne=4450;//Total number of explosions
pmi=5.35;//Gross imep in bar
pp=0.35;//Pumping imep in bar
W=40;//Net load on brake wheel in kg
dd=0.96;//Diameter of the brake wheel drum in m
dr=0.04;//Diameter of the rope in m
V=2.6;//Volume of gas used in m^3
pg=136;//pressure of gas in mmof Hg
dg=0.655;//The density of gas in kg/m^3
T=290;//The ambient temperature of air in K
CV=19000;//The calorific value of the fuel in kJ/m^3
ta=40;//Total air used in m^3
p=720;//Pressure of air in mm of Hg
Te=340;//Temperature of exhaust gas in degree centigrade 
Cpg=1.1;//Specific heat of gas in kJ/kgK
C=80;//Cooling water circulated in kg
Tr=30;//Rise in temperature of cooling water in degree centigrade 
R=287;//Real gas constant in J/kgK

//Calculations
ip=(pmi-pp)*10^5*L*(pi/4)*d^2*(Ne/(30*60))*(1/1000);//The indicated power in kW
bp=(pi*(N/(30*60))*W*9.81*(dd+dr)*(1/1000));//The brake power in kW
pgs=760+(pg/13.6);//Pressure of gas supplied in mm of Hg
Vg=((pgs*V)/290)*(273/760);//The volume of gas in m^3
Q=(Vg*CV)/30;//Heat supplied by gas used at NTP in kJ/min
Qbp=bp*60;//Heat equivalent of bp in kJ/min
Qc=(C/t)*4.18*Tr;//Heat lost to cooling medium in kJ/min
Va=[((p*ta)/T)*(273/760)]/30;//Volume of air used in kg/min
da=(1.013*10^5)/(R*273);//The density of air in kg/m^3
ma=Va*da;//Mass of air used in kg/min
mg=(Vg/30)*dg;//Mass of gas at NTP in kg/min
me=ma+mg;//Total mass of exhaust gas in kg/min
Qe=me*Cpg*(Te-(T-273));//Heat loss to exhaust gas in kJ/min
Qu=Q-(Qe+Qc+Qbp);//Unaccounted heat loss in kJ/min
nm=(bp/ip)*100;//Mechanical efficiency in percent
ni=((ip*60)/Q)*100;//Indicated thermal efficiency in percent 
x=((Qbp/1571)*100);//percentage heat in bp
y=((Qc/1571)*100);//Percent heat lost to cooling water 
z=((Qe/1571)*100);//Percent heat to exhaust gases
k=((Qu/1571)*100);//Percent heat unaccounted 

//Output
printf('--------------------------------------------------------------------------------------------\n           Heatinput        kJ/min        percent     Heat expenditure          kJ/min       percent  \n       ----------------------------------------------------------------------------------------- \n                    Heat                                                                                        \n                   supplied      1571       100        (a) Heat in bp                 %3.1f       %3.1f   \n                                                     (b) Heat loss to cooling water  %3.1f       %3.1f   \n                                                     (c) Heat to exhaust gas         %3.1f       %3.1f   \n                                                       (d) Unaccounted heat           %3.1f      %3.1f \n        -----------------------------------------------------------------------------------------        \n The mechanical efficiency = %3.2f percent \n The Indicated thermal efficiency = %3.1f percent ',Qbp,x,Qc,y,Qe,z,Qu,k,nm,ni)
        



