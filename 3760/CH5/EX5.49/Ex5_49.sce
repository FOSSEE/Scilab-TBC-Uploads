clc;
p=4000; // load taken by industrial plant in KW
pf=0.8; // lagging power factor 
l=400; // rating of induction motor to be replaced by synchronous motor
n=0.9; // efficiency of induction motor and synchronous motor
pf1=0.9; // lagging power factor at which induction motor operates
pf2=0.8; // leading power factor at which synchronous motor operates
A=p-%i*p*tand(acosd(pf)); // complex power of plant
pi=l/pf1; // power input to induction motor
B=pi-%i*pi*tand(acosd(pf1)); // complex power requirement of induction motor
C=pi+%i*pi*tand(acosd(pf2)); // complex power requirement of synchronous motor
pfn=cosd(atand(imag(A-B+C),real(A-B+C)));
printf('New power factor of the plant is %f lagging\n',pfn);
r=(abs(A-B+C)/sqrt(3))/(p/(sqrt(3)*pf)); // ratio of new line current to original line current
pr=(1-r)*100;
printf('Percentage reduction in line current is %f percent',pr);
