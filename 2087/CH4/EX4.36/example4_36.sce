

//example 4.36
//calculate
//risk of failure of cofferdam
//return period
clc;funcprot(0);
//given
T=30;             //deign for period
n=6;              //period of construction
R=(1-(1-(1/T))^n)*100;
R1=0.1;          //reduced risk
T1=1/(1-(1-R1)^(1/6));
R=round(R*10)/10;
T1=round(T1*100)/100;
mprintf("risk of failure of cofferdam=%f percent.",R);
mprintf("\nreturn period=%f years.",T1);
