clc;
v=4;  //volts
t=8;  //time in sec
ch=4;  //charge in Coloumb
c=ch/t;  //current
p=c*v;  //power
e=p*t;  //energy
disp(c,"Current in Ampere = ");  //displaying current
disp(p,"Power in Watt = ");  //displaying power
disp(e,"Energy in Joule = ");  //displaying energy