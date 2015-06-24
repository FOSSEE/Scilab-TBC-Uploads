

//example 5.7
//calculate discharge and percent increase in discharge
clc;
//given
k=0.005;            //coefficient of permeability
r=0.1;              //well radius
s=4;                //drawdown
b=10;               //thickness
R=300;              //radius of circle of influence
//Part(a)
Q1=2.72*b*k*s/log10(R/r);
Q1=round(Q1*10000)/10000;
mprintf("Discharge=%f cumec",Q1);

//Part (b)
r=0.2;
Q2=2.72*b*k*s/log10(R/r);
I=(Q2-Q1)*100/Q1;
I=round(I*10)/10;
mprintf("\npercent increase in discharge=%f percent.",I);


