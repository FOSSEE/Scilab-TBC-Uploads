//example 1.3
clc; funcprot(0);
gmax=17.1; // Gammadmax
Dr=0.7;
w=8/100;//moisture content
gmin=14.2; //Gammadmin
deff('y=f(x)','y=(x-14.2)/(17.1-14.2)*17.1/x-0.7')
[x, v, info]=fsolve(16,f);//solving for gammad
Gamma=x*(1+w);
disp(Gamma,"moist unit weight in kN/m^3");

