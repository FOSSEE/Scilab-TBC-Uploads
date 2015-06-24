

clear ;
clc;

printf("\t Example 11.6\n");
T1=263.15;          //temp.of ice,K

Pv=exp(21.99-6141/(T1));    //vapor pressure,KPa
xw=Pv/101.325;    //mole fraction of water
mw=xw*18.02/(xw*18.02+(1-xw)*28.96);    //mass fraction
printf("\t mass fraction of watervapor above the surface of ice is :%.5f\n",mw);
//end