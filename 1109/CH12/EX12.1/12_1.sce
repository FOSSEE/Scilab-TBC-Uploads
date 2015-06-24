clear;
clc;
w=2*%pi*(10^6);C=100*(10^-12);V=10;L=100*(10^-6);
Zc=1/(w*C);
Ic=(V/sqrt(2))/Zc;
printf("-R.m.s. value of current flowing through capacitor C = %f mA\n",round(Ic*(10^3)*100)/100);
Zl=w*L;
Il=(V/sqrt(2))/Zl;
printf("-R.m.s. value of current flowing through inductor L = %f mA",fix(Il*(10^3)*10)/10);
