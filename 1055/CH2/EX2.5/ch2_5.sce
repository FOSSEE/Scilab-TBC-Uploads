// To determine the inductance per Km of  3-phase line
clear
clc;
GMDc=1.266*0.7788*(10^-2);// self GMD of each conductor
Dbc=sqrt((4^2)+(.75^2));
Dab=Dbc;
Dab`=sqrt((4^2)+(8.25^2));
Daa=sqrt((8^2)+(7.5^2));
Dm1=(Dbc*8*7.5*9.1685)^(1/4);
Dm2=(Dbc*Dbc*9.1685*9.1685)^(1/4);
Dm3=Dm1;
Dm=((Dm1*Dm2*Dm3)^(1/3));
Ds1=sqrt(GMDc*Daa);// self GMD of each phase
Ds3=Ds1;
Ds2=sqrt(GMDc*9);
Ds=((Ds1*Ds2*Ds3)^(1/3));
Z=2*(10^-4)*(1000)*log(Dm/Ds);
mprintf("inductance=%.3f mH/km/phase\n",Z);
