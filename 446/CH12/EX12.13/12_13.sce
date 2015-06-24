clear
clc
disp('Exa-12.13');
R=0.5;t12=4.5*10^9;                 //value of radius and half-life 
t1=(t12/0.693)*log(1+(1/R));        //age of rock 1
R=1.0;
t2=(t12/0.693)*log(1+(1/R));       //age of rock-2
R=2.0
t3=(t12/0.693)*log(1+(1/R));       //age of rock 3
printf('The ages of rock samples are %.1e, %.1e, %.1e years respectively',t1,t2,t3);
 