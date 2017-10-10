clc;
Psh=10000;
P=4;
f=50;
Pi=660;
Pw=420;
I_l=8;
rs=1.2;
Pi_fl=11200;
I_fl=18;
Ns=(120*f)/P;
Ws=(2*3.14*Ns)/60;


//for part a
disp('for part a ');

Pstl=Pi-Pw-((3*I_l*I_l*rs)/(3));
mprintf('The stator core loss is \n %f W \n',Pstl);

//for part b
disp('for part b ');

Pg=Pi_fl-Pstl-(3*(I_fl/sqrt(3))*(I_fl/sqrt(3))*rs);
Prl=Pg-Psh;
mprintf('The rotor loss is %f W \n',Prl);

//for part c
disp('for part c ');

Prol=Prl-Pw;
mprintf('The rotor ohmic loss is %f W \n',Prol);

//for part d
disp('for part d ');

s_fl=Prol/Pg;
Nr=Ns*(1-s_fl);
mprintf('Full Load speed of rotor is %f rpm \n',Nr);

//for part e
disp('for part e ');

Te=Pg/Ws;
Tsh=Psh/((Ws)*(1-s_fl));
E=(Psh/Pi_fl)*100;
mprintf('The internal torque is %f Nm \n The shaft torque is %f Nm \n The motor Efficiency is %f percent',Te,Tsh,E);
