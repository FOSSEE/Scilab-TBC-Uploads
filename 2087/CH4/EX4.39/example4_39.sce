

//example 4.39
//calculate peak flow rate
clc;funcprot(0);
//given
T=30;            //return period
A=2.4;           //area of watershed
s=1/200;         //slope oof catchment
L=1.8;           //length of travel of water
C=0.25;          //average run-off coefficient
r=[2.5 3.8 4.8 5.9 6.7 7.4 8.4 8.7 9.2];   //rsinfall depth
t=60*0.000323*(L*1000)^0.77*(s)^(-0.385); 
rmax=r(7)+(r(8)-r(7))*7.84/10;
i=rmax*60/t;
q=2.778*C*A*i;
q=round(q*100)/100;
mprintf("peak flow rate=%f cumecs.",q);
