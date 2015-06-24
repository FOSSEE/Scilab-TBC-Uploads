clc
//Example 17.7
//From figure 17.16
disp('Given a linear model of a transistor we need not explicitly find the aadmittance parameters ')
disp('-y12 corresponds to admittance of 2k ohm resistor')
disp('y11+y12 corresponds to admittance of 500 ohm resistor')
disp('y21-y12 correponds to gain of dependent voltage source')
disp('y22+y12 corresponds to admittance of 10k ohm resistor')
//Writing down in equation form
y12=-1/2000
y11=1/500-y12
y21=0.0395+y12
y22=1/10000-y12
printf("\n y11= %3.2f mS \n y12= %3.2f mS \n y21= %3.2f mS \n y22= %3.2f mS",y11*10^3,y12*10^3,y21*10^3,y22*10^3);