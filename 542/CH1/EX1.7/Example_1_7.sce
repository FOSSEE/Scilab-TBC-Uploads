clear;
clc;
printf("\n Example 1.7");
Ai=(%pi/4)*(0.075)^2;//cross sectional area at the gas inlet in m^2
do=0.075;//gas outlet diameter in m
p=1.3;//gas density in kg/m^3
Z=1.2;//height of the seperator in m
dt=0.3;//seperator diameter in m
v=1.5;//gas entry velocity in m/sec
G=(Ai*v*p);//mass flow rate of the gas in kg/sec
printf("\n cross sectional area at the gas inlet is %fm^2",Ai);
printf("\ngas outlet diameter is %fm",do);
printf("\ngas density is %fkg/m^3",p);
printf("\nheight of the seperator is %fm",Z);
printf("\nseperator diameter is%fm",dt);
printf("\nmass flow rate of the gas is %fkg/sec",G);
function[u]=terminal_vel()
    u=0.2*(Ai)^2*(do)*p*9.8/(%pi*Z*(dt)*G);//velocity is in m/sec
    funcprot(0);
endfunction
u=terminal_vel();
printf("\nthe terminal velocity of the smallest particle retained by the seperator =%fm/sec",u);
function[d]=particle_diameter(u)
    u=terminal_vel();
    n=0.018*10^(-3);//viscosity in mNs/m^2
    ps=2700;//density of the particle in kg/m^3
    d=((u*18*n)/(9.8*(ps-p)))^(0.5);//particle size in um
    funcprot(0);
endfunction
u=terminal_vel();
d=particle_diameter(u);
do=d*10^6;
printf("\n particle diameter by the stoke law is %fum",do);

