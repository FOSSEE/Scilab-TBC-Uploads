clc
disp("Example 2.2")
printf("\n")
printf("Given")
disp("Inductance used is 30mH")
disp("Current flow is i=10*sin(50*t)")
L=30*10^-3;iamp=10;
t=0:0.01:0.06283;
i=10*sin(50*t)
//v=L*d/dt(i)
//d/dt(sin 50t)=50*cos t
vamp=L*iamp*50;
v=vamp*cos(50*t)

//sinA*cosB=(sin(A+B)+sin(A-B))/2

pamp=vamp*iamp/2;
p=pamp*sin(100*t)
//On integrating 'p' w.r.t  t

wL=0.75*(1-cos(100*t));

figure
a= gca ();
plot(t,i)
xtitle ('i vs wt','wt','i');
a. thickness = 2;

figure
a= gca ();
plot(t,v)
xtitle ('v vs wt','wt','v ');
a. thickness = 2;

figure
a= gca ();
plot(t,p)
xtitle ('p vs wt','wt','p ');
a. thickness = 2;

figure
a= gca ();
plot(t,wL)
xtitle ('wL vs wt','wt','wL ');
a. thickness = 2;



