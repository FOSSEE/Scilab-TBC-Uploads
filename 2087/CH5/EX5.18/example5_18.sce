

//example 5.18
//calculate effective well diameter
clc;
//given
b=10;              //thickness of acquifer
k=48;              //permeability coefficient
R=500;             //radius of influence
s=12;              //drawdown
Q=5000;            //discharge(cumec/day)
r=R/%e^(2*%pi*b*k*s/Q);
D=2*r;
D=round(D*100)/100;
mprintf("effective well diameter=%f m.",D);


