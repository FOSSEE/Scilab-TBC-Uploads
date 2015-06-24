clc
clear

//input
c1=2*(10^-6);// capacitance of first capacitor in farad which is connected in series with second
c2=6*(10^-6);// capacitance of second capacitor in farad which is connected in series with first
v=240;//d.c. voltage supply in volts

//calculations
ct=(c1*c2)/(c1+c2);//effective capacitance in farad
q=ct*v;//total charge in coloumbs
e1=(q^2)/(2*c1);// energy stored in first capacitor in joules
e2=(q^2)/(2*c2);// energy stored in second capacitor in joules

//output
mprintf('the energy stored in first capacitor is %3.10f J \n the energy stored in second capacitor is %3.10f J',e1,e2)
