clc
clear
//Input data
n=4;//Number of cylinders
d=0.085;//The diameter of the bore m
L=0.095;//The length of the stroke in m
tr=0.35;//Torque radius in m
N=3000;//The speed of the engine in rpm
w=430;//Net brake load in N
w1=300;//Net brake load produced at the same speed by three cylinders in N
mf=0.24;//The mass flow rate of fuel in kg/min
CV=44000;//The calorific value of the fuel in kJ/kg
mw=65;//Mass flow rate of water in kg/min
Tw=12;//The rise in temperature in degree centigrade
a=15;//The air fuel ratio 
Te=450;//The temperature of the exhaust gas in degree centigrade 
Ta=17;//Ambient temperature in degree centigrade
p=76;//Barometric pressure in cm of Hg
H=15.5;//The proportion of hydrogen by mass in the fuel in percent
Cpe=1;//The mean specific heat of dry exhaust gas in kJ/kgK
Cps=2;//The specific heat of super heated steam in kJ/kgK
Cpw=4.18;//The specific heat of water in kJ/kgK
Ts=100;//At 76 cm of Hg The temperature in degree centigrade 
hfg=2257;//The Enthalpy in kJ/kg
pi=3.141;//Mathematical constant of pi
R=287;//Real gas constant in J/kgK

//Calculations
bp=(2*pi*N*w*tr)/(60*1000);//The brake power in kW
bp1=(2*pi*N*w1*0.35)/(60*1000);//The brake power when each cylinder is cut off in kW
ip=bp-bp1;//Indicated power per cycle in kW
ip1=n*ip;//Indicated power of the engine in kW
imep=[(ip1*60*1000)/(L*(pi/4)*d^2*(N/2)*n)]/10^5;//The indicated mean effective pressure in bar
ni=[(ip1*60)/(mf*CV)]*100;//Indicated thermal efficiency in percent
bsfc=(mf*60)/bp;//Brake specific fuel consumption in kg/kWh
Vs=(pi/4)*d^2*L*(N/2)*n;//Swept volume in m^3/min
ma=a*mf;//Mass flow rate of air in kg/min
da=(1*10^5)/(R*(Ta+273));//The density of air in kg/m^3
Va=ma/da;//Volume of air flow in m^3/min
nv=[Va/Vs]*100;//Volumetric efficiency in percent
Qf=mf*CV;//Heat supplied by fuel in kJ/min
Qbp=bp*60;//The heat equivalent to bp in kJ/min
Qc=mw*Cpw*Tw;//Heat lost to cooling water in kJ/min
mv=9*(H/100)*mf;//Mass of water vapour in kg/min
me=ma+mf-mv;//Mass of dry exhaust gas in kg/min
Qe=me*Cpe*(Te-Ta);//Heat carried away by the exhaust gas in kJ/min
Qs=(mv*([Cpw*(Ts-Ta)]+hfg+(Cps*(Te-Ts))));//Heat lost in steam in kJ/min
Qu=Qf-(Qbp+Qc+Qe+Qs);//Unaccounted heat loss in kJ/min
x=(Qbp/Qf)*100;//Percentage of heat in bp
y=(Qc/Qf)*100;//Percentage of heat loss in colling water
z=(Qe/Qf)*100;//Percentage heat loss in dry exhaust gas 
k=(Qs/Qf)*100;//Percentage heat lost to steam 
l=(Qu/Qf)*100;//Percentage  of unaccounted heat lost 

//Output
printf('---------------------------------------------------------------------------------------------------\n      Heat input            kJ/min       percent          Heat expenditure         kJ/min      percent   \n  -------------------------------------------------------------------------------------------------------\n  Heat supplied by fuel     %3.0f         100      (a) Heat in bp                   %3.0f         %3.2f  \n                                                   (b) Heat lost to cooling water    %3.0f        %3.2f  \n                                                   (c) Heat to dry exhaust           %3.0f        %3.2f  \n                                                   (d) Heat lost in steam            %3.0f        %3.2f  \n                                                   (e) Unaccounted heat loss         %3.0f        %3.2f  \n         total              %3.0f          100                    Total              %3.0f          100   \n --------------------------------------------------------------------------------------------------------\n \n The indicated mean effective pressure = %3.2f bar \n The indicated thermal efficiency = %3.1f percent \n The brake specific fuel comsumption = %3.4f kg/kWh \n The volumetric efficiency = %3.1f percent ',Qf,Qbp,x,Qc,y,Qe,z,Qs,k,Qu,l,Qf,Qf,imep,ni,bsfc,nv)



