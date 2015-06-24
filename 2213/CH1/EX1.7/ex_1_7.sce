//Example 1.7 // rating of furnance
clc;
clear;
close;
format('v',6)
sh=0.1;// specific heat of steel in kcal/Kg/°C
lh=26.67;//latent heat in kcal/kg
mp=555;//melting point of steel °C
t1=35;//initial temperture in °C
e=0.8;//overall efficiency
ip=5700;//input current in amperes
rs=0.008;//resistance of transformer referred to secondary in ohms
rr=0.014;// recatance in ohms
m=2;// steel in tonnes
ers=((m*10^3*((sh*(mp-t1))+lh)));// energy required in joules
ersh=ers/(860);//energy required in kWh
ata=1;//time taken to melt steel in hours
ao=ersh/ata;//average output in kW
ai=ao/e;//average input in kW
vdr=ip*rs;//voltage drop due to resistance of furnace leads
vdr1=ip*rr;//voltage drop due to reactance of furnace leads
va=((ai*10^3)/(3*ip))-(vdr);//voltage resistive in nature
rac=va/ip;//arc resistance in Ω
oppv=sqrt((va+vdr)^2+vdr1^2);//open circuit phase voltage in volts
kvas=3*ip*oppv*10^-3;//total kVA drawn 
pf=((va+vdr)/oppv);//power factor 
rf=ai/ata;// in kW
disp(rf,"rating of furnance  in kW")

