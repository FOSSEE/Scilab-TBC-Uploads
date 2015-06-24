

//example 14.9
//design the channel section and calculate discharge
clc;funcprot(0);
//given
r=5.7;       //B/D
S=1/5000;    //bed slope
N=0.0225;    //rogosity coefficient
m=1;         //critical velocity ratio(assumed)

//applying kutters formula; V=C(RS)^0.5
//where C=(23+1/N+0.00155/S)*(R*S)^0.5/(1+(23+0.00155/S)*N/R^0.5);
//we get equation in d as
//38.88*D^0.64-66.5*D^0.5+30.37*D^0.14=0
//solving it by trial and error method
//we get D=1.7 m.
D=1.7;
B=r*D;
V=0.55*m*(D)^0.64;
A=B*D+D^2/2;
Q=A*V;
Q=round(Q*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\n Discharge=%f cumecs.",Q);
