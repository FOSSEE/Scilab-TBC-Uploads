clear;
clc;
Zg=300;Zi=400;Zi1=600;theta=10;
thetai=theta/8.686;
Zi2=Zi1;
Ir=thetai + log(((Zi1+Zg)/(2*sqrt(Zi1*Zg)))*((Zi1+Zi)/(2*sqrt(Zi1*Zi)))*((Zi+Zg)/(2*sqrt(Zi*Zg)))*((1-(((Zg-Zi1)/(Zg+Zi1))*((Zi-Zi1)/(Zi+Zi1))*exp(-2*thetai)))));
Ir1=(round(Ir*10)/10)*8.686;
printf("The reduction in power will be = %f db",round(Ir1*100)/100);
