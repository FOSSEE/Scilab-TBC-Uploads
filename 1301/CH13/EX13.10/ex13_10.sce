clc;
i=15;      //current in Ampere
v=240;     //potential diff. in Volt
t=45/60;   //time in hours
p=v*i;     //clculating power in Watt using p=v*i
w=p*t;     //calculating work done in Watt.h using w=p*t
disp(w/1000,"Work done in  kiloWatt.hr = ");   //displaying result