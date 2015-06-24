clc
disp("Example 7.23")
printf("\n")

//Sketch voltage 'v'
t=-.001:0.00005:0
t1=0:0.00005:.001
T=1*10^-3;
V0=10;
v=V0*exp(t/T)
v1=V0*exp(-t1/T)
figure
a= gca ();
plot(t,v)
plot(t1,v1)
xtitle ('v vs t','t (ms)','v ');
a. thickness = 2;

//Sketch current 'i'
t=-.001:0.00005:0
t1=0:0.00005:.001
T=1*10^-3;
I0=10*10^-3;
i=I0*exp(t/T)
i1=-I0*exp(-t1/T)
figure
a= gca ();
plot(t,i)
plot(t1,i1)
xtitle ('i vs wt','t (ms)','i (mA)');
a. thickness = 2;


