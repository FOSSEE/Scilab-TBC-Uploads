//Exa 1.12
clc;
clear;
close;
//given data
format('v',7);
V=2000;//in Volt
Ia=100;//in Ampere
OC_Voltage=500;//in Volt
SC_Current=100;//in Ampere
Zs=OC_Voltage/SC_Current;//in ohm
Ra=0.8;//in Ohm
Xs=sqrt(Zs^2-Ra^2);//in Ohm
//formula : Induced EMF, E=sqrt((V*cos_fi+Ia*Ra)^2+(V*sin_fi+Ia*Xs)^2)
//Part (a)  : at unity pf
cos_fi=1;//Unitless
sin_fi=0;//Unitless
E=sqrt((V*cos_fi+Ia*Ra)^2+(V*sin_fi+Ia*Xs)^2)
Regulation=(E-V)*100/V;//in %
disp(Regulation,"Regulation at U.P.F. in % :");

//Part (b)  : at 0.71 pf lagging
cos_fi=0.71;//Unitless
sin_fi=0.704;//Unitless
E=sqrt((V*cos_fi+Ia*Ra)^2+(V*sin_fi+Ia*Xs)^2)
Regulation=(E-V)*100/V;//in %
disp(Regulation,"Regulation at 0.71 pf lagging in % :");

//Part (c)  : at 0.8 pf leading
cos_fi=0.8;//Unitless
sin_fi=0.6;//Unitless
E=sqrt((V*cos_fi+Ia*Ra)^2+(V*sin_fi-Ia*Xs)^2)
Regulation=(E-V)*100/V;//in %
disp(Regulation,"Regulation at 0.8 pf leading in % :");