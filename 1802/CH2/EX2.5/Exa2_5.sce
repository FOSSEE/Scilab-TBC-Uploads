//Exa 2.5
clc;
clear;
close;
//Given Data :
format('v',7);
P=5*10^6;//in watt
VL=33*10^3;//in volt
cosfi=0.8//unitless
//LineCost=31250*a+4000;//in Rs/km
rho=10^-6;//in ohm-cm
i=8;//in %
E_cost=4;//in paisa/kwh
IL=P/(sqrt(3)*VL*cosfi);//in Ampere
//Line_length=l*10^5;//in cm
//R=rho*l*10^5/a;//in ohm
disp("Resistance of cable(in ohm) = "+string(rho*10^5)+"(l/a)");
//E_lost=3*IL^2*R*365/1000;//in kwh
disp("Total Energy Lost per annum in 3 conductor(in kwh)="+string(3*IL^2*rho*10^5*365/1000)+"(l/a)");
//Ccost_line=31250*a*l;//in Rs.
//AnnualCharges=Ccost_line*i/100;//in Rs.
disp("Annual chrges on account of interest and depriciation(in Rs.) : "+string(31250*i/100)+"(a*l)"); 
disp("For most ecpnomic cross section :");
a=sqrt(1309.33/2500);
disp(a,"Most economical cross section(in cm^2) :");