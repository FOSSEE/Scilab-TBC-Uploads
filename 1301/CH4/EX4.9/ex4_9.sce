clc;
G=6.67*10^-11   //universal gravitational constant in Nm square/kg square.
m1=5.98*10^24;   //mass of earth in kg
m2=7.36*10^22;   //mass of moon in kg
r=3.84*10^8;     //radius of moon's orbit
F=(G*m1*m2)/(r*r);  //calculating gravitationalforce in Newton
v=sqrt((G*m1)/r);    //calculating velocity of moon in m/sec
s=2*%pi*r;    //calculating circumference of moon's orbit in metre
t=s/v;        //calculating time in sec
disp(F,"Gravitational Force in Newton = ");  //displaying gravitational force in Newton
disp(v,"Velocity in metre/sec = ");   //displaying velocity in metre
disp(t,"Time in sec = ");  //displaying time in sec.
disp(t/86400,"Time in days = ");  //displaying time in days