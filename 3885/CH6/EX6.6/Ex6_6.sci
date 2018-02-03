//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.6

clc;
clear; 
s=poly(0,'s')
//calculation of gain K
kv=50//given velocity error constant
// open loop transfer function G(s)=K/s*(s+1)(s+5)
//by definition of velocity error constant applying limit s=0 in G(s) 
disp('the value of K is 250;')
h=syslin('c',250/(s*(s+1)*(s+5)))
bode(h)
show_margins(h)
xtitle("uncompensated system")
//from the plot the phase margin of uncompensated system is -44
//but the system requires phase margin of 20 so lead compensation required
pm=20//choose PM of compensated system is 20 degree
//since the lead angle required is greater than 60 we have to realise lead compensator as cascade of two compensators with each compensator providing half of required phase
phim=69/2//maximum lead angle
alpha=(1-sind(phim))/(1+sind(phim))
disp(alpha,'the vale of alpha is')
wmdb=-20*log(1/sqrt(alpha))////db magnitude
wm=7.8//from the bode plot of uncompensated system the frequency wm corrosponding to db gain of -6db is 5.6rad/sec
t=1/(wm*sqrt(alpha))
disp(t,'the value of t is')
//transfer function of lead compensator is (s+1/t)/(s+1/alpha*t)
hc=syslin('c',(0.0784*(1+0.024*s)^2)/(1+0.067*s)^2)
disp(hc,' transfer function of lead compensator is')
//open loop transfer function of compensated system is h*hc
hcmp=syslin('c',h*hc)
disp(hcmp,'open loop transfer function of compensated system is ')
figure()
bode(hcmp)
show_margins(hcmp)
xtitle("compensated system")
