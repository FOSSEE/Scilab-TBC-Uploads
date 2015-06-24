

//example 4.38
//calculate peak rate of run off
clc;funcprot(0);
//given
C1=0.22;C2=0.12;C3=0.32;     //run-off coefficient
A1=3.2;A2=4.8;A3=1.8;       //calculated area
L=2.4;                      //length of water course
H=30;                       //fall
T=30;                       //frequency
t=60*0.000323*(L*1000)^0.77*(H/(L*1000))^(-0.385);
i=78*T^0.22/(t+12)^0.45;
q=2.778*i*(C1*A1+C2*A2+C3*A3);
q=round(q*10)/10;
mprintf("peak rate of run off=%f cumecs.",q);
