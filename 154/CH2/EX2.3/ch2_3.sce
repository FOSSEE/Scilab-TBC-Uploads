clc
disp("Example 2.3")
printf("\n")
printf("Given")
disp("Capacitance used is 20uF")
disp("Voltage is v=50*sin(200*t)")
C=20*10^-6;
// Given that v=50*sin(200*t);
vamp=50;
t=0:0.001:0.015;
//q=C*v
qamp=vamp*C
q=qamp*sin(200*t)
//i=C*d/dt(v)
//d/dt(sin 200t)=200*cos t
iamp=C*vamp*200;
i=iamp*cos(200*t)

//sinA*cosB=(sin(A+B)+sin(A-B))/2

pamp=vamp*iamp/2;
p=pamp*sin(400*t)

//On integrating 'p' w.r.t  t

wC=12.5*(1-cos(400*t));

figure
a= gca ();
plot(t,wC)
xtitle ('wC vs wt','wt','wC (mJ)');
a. thickness = 2;



