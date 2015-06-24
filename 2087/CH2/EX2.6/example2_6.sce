
//example 2.6
//calculate Average depth of water applied
clc;
//Given
L=100;//length of furrow
W=1;//furrow spacing
s=0.3//longitudnal slope of furrow
t1=80//initial time flow of  stream
t2=35//final time flow of stream
qm=0.6/s;
q=qm*0.4;
dav=((q*t2*60)+(2*t1*60))/100;
mprintf("Average depth of water applied=%f mm.",dav);
