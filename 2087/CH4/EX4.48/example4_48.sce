

//example 4.48
//calculate evaporation from reservior surface during the week
clc;funcprot(0);
//given
h1=7.75;        //initial depth of water
r=3.80;         //rainfall during the week
hr=2.50;       //depth of water removed
C=0.7;        //pan coefficient
ha=r-hr;
hl=ha+h1;
h2=8.32;
ev=hl-h2;
evs=ev*C;
evs=round(evs*100)/100;
mprintf("evaporation from reservior surface during the week=%f cm.",evs);
