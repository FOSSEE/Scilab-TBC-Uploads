

//example 5.11
//calculate discharge if one well discharges
//percent decrease when two well discharges
clc;
//given
d=0.2;            //diameter of well
r=d/2;
B=100;             //distance between wells
b=12;             //thickness of acquifer
k=60;             //coefficient of permeability
s=3;              //dispersion head
R=250;            //radius of influence
Q=2.72*b*k*s/(24*log10(R/r));
mprintf("discharge if one well discharges=%i cubic metre/hour.",Q);
//when both well are discharging
Q1=2.72*k*b*s/(24*log10(R^2/(r*B)));
Q1=round(Q1*10)/10;
mprintf("\ndischarge if both wells discharges=%f cubic metre/hour.",Q1);
PE=(Q-Q1)*100/Q;
PE=round(PE*100)/100;
mprintf("\npercentage decrease in discharge=%f percent.",PE);

