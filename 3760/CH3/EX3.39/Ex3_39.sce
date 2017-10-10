clc;
t0=0; // accelerating period
t1=30; // decelerating period
l1=2000; // maximum load during accelerating period
lf=600; // maximum load during decelerating period
l=1000; // load during full load 
tf=60; // full load duration
td=10; // decelerating duration
tde=20; // decting period
sa=l1/t1; // slope during accelerating
sd=lf/td; // slope during decelerating
e1=integrate('(sa*t)^2','t',t0,t1); // term 1 for finding motor rating
e2=l^2*tf; // term 2 for finding motor rating
e3=integrate('(sd*t)^2','t',t0,td); // term 3 for finding motor rating
T=t1+tf+td+tde; // total duration
R=sqrt((1/120)*(e1+e2+e3));
printf('KW rating of motor is %f KW',R);
disp('Choose a motor of rating above the calculated rating');
