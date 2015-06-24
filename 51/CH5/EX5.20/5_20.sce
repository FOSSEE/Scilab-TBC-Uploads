clc;
clear;
Q=300;//gal/min    
d1=3.5;//in.
p1=18;//psi
d2=1;//in.
p2=60;//psi
diffu=3000;//ft*lb/slug

//energy equation
//m(u2-u1+(p1/d)-(p2/d)+((v2^2)-(v1^2))/2 + g*(z2-z1))=q-Wshaft
m=Q*1.94/(7.48*60);//slugs/sec
v1=Q*12*12/(%pi*(d1^2)*60*7.48/4);
v2=Q*12*12/(%pi*(d2^2)*7.48*60/4);
Wshaft=m*(diffu + (p2*144/1.94) - (p1*144/1.94) + (((v2^2)-(v1^2))/2))/550;//hp
disp("hp",Wshaft,"The power required by the pump=")
disp("hp",m*(diffu/550),"The internal energy change accounts for =")
disp("hp",m*(((p2*144/1.94) - (p1*144/1.94))/550),"The pressure rise accounts for =")
disp("hp",m*(((v2^2)-(v1^2))/(550*2)),"The kinetic energy change accounts for =")
