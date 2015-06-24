clc;

//from tables;
v_a=0.1115;//m^3/kg
p_b=20;//bar
v_d=0.4743;//m^3/kg

hf=763;//kJ/kg
h=2650;//kJ/kg
h_fg=2015;//kJ/kg
x=(h-hf)/h_fg;
vg=0.1944;//m^3/kg
v_c=x*vg;

clf();
x=linspace(0.05,0.5,1000);
y=(0.09957*20)*((x)^(-1));
plot2d(x,y,style=1);

y=20;
plot(x,y)

y=10;
plot(x,y);

y=(0.4743*6)*((x)^(-1));
plot2d(x,y,style=4);

y=(0.1115*20)*((x)^(-1));
plot2d(x,y,style=2);

y=6;
plot2d(x,y,style=4)
