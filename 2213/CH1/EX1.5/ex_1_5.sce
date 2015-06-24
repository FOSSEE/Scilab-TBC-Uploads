//Example 1.5 // average kW ,KVA input ,arc voltage ,arc resistance and pf of the current drawn
clc;
clear;
close;
format('v',7)
sh=444;// specific heat of steel in J/Kg/°C
lh=37.25;//latent heat in kJ/kg
mp=1370;//melting point of steel °C
t1=19.1;//initial temperture in °C
e=0.5;//overall efficiency
ip=5700;//input current in amperes
rs=0.008;//resistance of transformer referred to secondary in ohms
rr=0.014;// recatance in ohms
m=4.3;// steel in tonnes
ers=((m*10^3*((sh*(mp-t1))+lh*10^3)));// energy required in joules
ersh=ers/(3.6*10^6);//energy required in kWh
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
disp(ai,"average input in kW")
disp(va,"arc voltage in volts")
disp(rac,"arc resistance in Ω")
disp(pf,"pf of the current drawn from the supply (lagging)")
disp(kvas,"total kVA drawn in kVA")
