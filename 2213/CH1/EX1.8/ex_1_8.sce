//Example 1.8 // efficiency of furnance 
clc;
clear;
close;
format('v',3)
sh=880;// specific heat of steel in J/Kg/°C
lh=32000;//latent heat in J/kg
mp=660;//melting point of steel °C
t1=15;//initial temperture in °C
ip=5700;//input current in amperes
rs=0.008;//resistance of transformer referred to secondary in ohms
rr=0.014;// recatance in ohms
m=1.8;// IN KG
ers=((m*((sh*(mp-t1))+lh)));// energy required in joules
ersh=ers/(3.6*10^6);//energy required in kWh
TM=10;//TIME TO MELT IN MINS
ip=5;//input of the furnance in kW
ei=(ip)*(TM/60);//energy input in kWh
n=(ersh/ei)*100;//efficiency of furnance in percentage
disp(n,"efficiency of furnance in percentage")

