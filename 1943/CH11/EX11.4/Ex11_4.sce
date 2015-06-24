
clc
clear
//Input data
t=20//Trial time in minutes
NL=680//Net brake load in N
mep=3//Mean effective pressure in bar
N=360//Speed in rpm
Fc=1.56//Fuel consumption in kg
cw=160//Cooling water in kg
Tw=32//Temperature of water at inlet in degree C
Wo=57//Water outlet temperature in degree C
a=30//Air in kg
Ta=27//Room temperature in degree C
Te=310//Exhaust gas temperature in degree C
d=210//Bore in mm
l=290//Stroke in mm
bd=1//Brake diameter in m
cv=44//Calorific value in MJ/kg
st=1.3//Steam formed in kg per kg fuel in the exhaust
cp=2.093//Specific heat of steam in exhaust in kJ/kg.K
cpx=1.01//Specific heat of dry exhaust gases in kJ/kg.K
cpw=4.187//Specific heat of water in kJ/kg.K

//Calculations
ip=(mep*100*(l/1000)*(3.14/4)*(d/1000)^2*N)/60//Indicated Power in kW
bp=((2*3.14*N*(NL*(1/2)))/60)/1000//Brake power in kW
nm=(bp/ip)*100//Mechanical efficiency in percent
qs=(Fc*cv*10^3)//Heat supplied in kJ
qip=(ip*t*60)//Heat equivalent of ip in kJ
qcw=(cw*cpw*(Wo-Tw))//Heat carried away by cooling water in kJ
tm=(Fc*a)//Toatl mass of exhaust gas in kg
ms=(st*Fc)//Mass of steam formed in kg
mde=(tm-ms)//Mass of dry exhaust gas in kg
Ed=(mde*cpx*(Te-Ta))//Energy carried away by dry exhaust gases in kJ
Es=(ms*((cpw*(100-Ta))+2257.9+(cp*(Te-100))))//Energy carried away by steam in kJ
TE=(Ed+Es)//Total energy carried away by exhaust gases in kJ
ue=(qs-(qip+qcw+TE))//Unaccounted energy in kJ
pqip=(qip/qs)*100//Percentage
pqcw=(qcw/qs)*100//Percentage
pTE=(TE/qs)*100//Percentage
pue=(ue/qs)*100//Percentage

//Output
printf('Indicated power is %3.2f kW \n Brake power is %3.3f kW \n\n                            ENERGY BALANCE SHEET \n                                                (in kJ)            (in percent)\n 1. Energy equivalent in ip                     %3.0f                 %3.2f \n 2. Energy carried away by cooling water        %3.0f                 %3.2f \n 3. Energy carried away by exhaust gases        %3.0f                 %3.2f \n 4. Unaccounted for energy loss                 %3.0f                 %3.2f \n             Total                              %3.0f                 %3.2f',ip,bp,qip,pqip,qcw,pqcw,TE,pTE,ue,pue,qs,(pqip+pqcw+pTE+pue))
