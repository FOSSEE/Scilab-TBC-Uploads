clc;
p=60;      //power in Watt
c=80;      //car capacity in Ampere.hr
t=3600;    //time in seconds
v=12;      //potential diff. in volt
q=c*t;     //charge in Ampere.sec = Coulomb
w=q*v;     //energy provided in Joule
t=w/p;     //calculating time in second
disp(w,"(a) Energy stored in the battery in Joule = ");    //displaying result
disp(t/3600,"(b) Time the battery is on in hours = ");     //displaying result