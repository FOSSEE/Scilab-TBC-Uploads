clear;
clc;

//Example13.15[Effect of Clothing on Thermal Comfort]
h_rad=4.7,h_conv=4.0;//The radiation and convection heat transfer coefficient[W/m^2.degree Celcius]
R_clo=0.6*0.155;//Thermal resistance of clothing[m^2.degree Celcius/W]
T_skin=33,T_amb=22;//Skin and Ambient temperature[degree Celcius]
As=1.8;//Surface area of an average man 
//Solution:-
h_comb=h_conv+h_rad;//combined heat transfer coefficient[W/m^2.degree Celcius]
Q_sen_clo=As*(T_skin-T_amb)/(R_clo+(1/h_comb));//[W]
disp("W",Q_sen_clo,"The sensible heat loss from this person when clothed is")
//On removing the clothes
//R_clo=0 Clothing resistance on removing clothes
//Setting both heat transfer rates equal to determine new ambient air temperature
T_amb_new=T_skin-(Q_sen_clo*(1/h_comb)/As)//[degree Celcius]
disp("degree Celcius",T_amb_new,"The ambient temperature now is")