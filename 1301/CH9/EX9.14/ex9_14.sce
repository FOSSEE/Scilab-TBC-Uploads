clc;
m1=2;    //mass of water in kg
c=1;     //specific heat in kcal/kg.celcius
delT=20; //change in temp. in celcius
L=540;   //L in kcal/kg
Q1=m1*c*delT;     //calculating heat in kcal
Q2=500-Q1;        //calculating heat available to convert water at 100 celcius to steam
msteam=Q2/L;  //calculating mass of steam in kg
disp(msteam,"Steam produced in kg = ");  //displaying result.