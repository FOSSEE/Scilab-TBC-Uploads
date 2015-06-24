

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.11 ")

//Initial temperature of soil in degree C
Ti = 20;
//Surface temperature of soil
Ts = -15;
//Critical temperature (Freezing temperature) in degree C
Tc = 0;
//Time in days
t = 60;
//Density of soil in kg/m3
rho = 2050;
//Thermal conductivity of soil in W/mK
k = 0.52;
//Specific heat in J/kgK
c = 1840;
//Diffusivity in m2/sec
alpha = k/(rho*c);

//Finding the value of following to proceed further
//Z value
z = (Tc-Ts)/(Ti-Ts);

//From table 43, it corresponds to an error function value of 0.4,
//proceeding

disp("Minimum depth at which one must place a water main below the surface to avoid freezing in m is")
//Minimum depth at which one must place a water main below the surface to avoid freezing in m
xm = (0.4*2)*((((alpha*t)*24)*3600)^0.5)
