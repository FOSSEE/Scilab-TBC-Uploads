//Exa 2.4
clc;
clear;
close;
//Given Data :
format('v',9);
l=4*10^5;//in cm
VL=30;//in KV
//LineCost=40000*a+7500;//in Rs/km
i=8;//in %
E_cost=4;//in paisa/kwh
rho=1.72*10^-6;//in ohm-cm
//R=rho*l/a;//in ohm
disp("Resistance of cable(in ohm) = "+string(rho*l)+"/a");
P1=3*10^6;//in watt
h1=10;//in hours
cosfi1=0.8//unitless
I1=P1/(sqrt(3)*VL*10^3*cosfi1);//in Ampere
P2=1.5*10^6;//in watt
h2=6;//in hours
cosfi2=0.9//unitless
I2=P2/(sqrt(3)*VL*10^3*cosfi2);//in Ampere\
P3=0.5*10^6;//in watt
h3=8;//in hours
cosfi3=0.9;//unitless
I3=P3/(sqrt(3)*VL*10^3*cosfi3);//in Ampere
//Etot=3*(I1^2*h1+I2^2*h2+I3^2*h3)*R*365/1000;//in kwh
//Ccost_line=40000*a*4;//in Rs.
//AnnualCharges=Ccost_line*i/100;//in Rs.
disp("Annual chrges on account of interest and depriciation(in Rs.) : "+string(40000*4*i/100)+"a"); 
//AnnualCost2=(E_cost/100)*Etot ;//in Rs.
disp("AnnualCost of Energy Lost(in Rs.)="+string((E_cost/100)*3*(I1^2*h1+I2^2*h2+I3^2*h3)*rho*l*365/1000)+"/a");
disp("For most ecpnomic cross section :");
a=sqrt(1783/12800);
disp(a,"Most economical cross section(in cm^2) :");