clc;
vl=230; // line voltage
f=50; // frequency of supply
c=100*10^-6; // value of capacitance in each phase
vp=230/sqrt(3); // phase voltage
zp=1/(2*%pi*f*c); // phase impedance
il=vp/zp; // line current
// value of cos(theta) is taken from figB.15
w1=vl*il*cosd(120);
w2=vl*il*cosd(60);
printf('Reading of wattmeter 1 is %f W\n',w1);
printf('Reading of wattmeter 2 is %f W\n',w2);
p=w1+w2;
printf('Total input power is %f W',p);
