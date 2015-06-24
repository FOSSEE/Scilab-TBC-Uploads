clear;
clc;
printf("\n Example 3.3");
min_area =6*10^(-6);    //minimum area of mica plates in m^2
max_area =6*10^(-4);    //maximum area of mica plates in m^2
p_oil = 820;            //density of the oil in kg/m^3
Viscosity = 0.01;      //Viscosity is in N s/m^2
p_mica = 3000;         //Density of mica in kg/m^3

printf("\n    smallest particles                           largest particles");
printf("\nA:   %fm^2                                             %fm^2 ",min_area,max_area);
printf("\ndp:  %fm                                               %fm",sqrt(4*min_area/(%pi)),sqrt(4*max_area/(%pi)));
printf("\ndp^3:%f*10^(-8)m^3                                     %f*10^(-5)m^3",sqrt(4*min_area/(%pi))^(3)*10^(8),sqrt(4*max_area/(%pi))^(3)*10^5);
printf("\nv:   %f*10^9m^3                                        %f*10^7m^3",0.285*sqrt(4*min_area/(%pi))^(3)*10^(9),sqrt(4*max_area/(%pi))^(3)*(10^7)*0.0285);
printf("\nk:   %f                                                %f",0.285,0.0285);

x1 = (4*0.285/(%pi*0.01^2))*(3000-820)*(820*2.103*10^(-8)*9.81);
x2 = (4*0.0285/(%pi*0.01^2))*(3000-820)*(820*2.103*10^(-5)*9.81);
printf("\n(Ro/pu^2)Reo^2 is %d for the smallest particles and %d for the largest particles",x1,x2);
//From table 3.4 Re for smallest particle is 34.9 and that for the largest particle is 361
u1 = 34.9*0.01/(820*2.76*10^(-3));
printf("\nTerminal velocity for the smallest particle is %.3f m/sec",u1);
u2 = 361*0.01/(820*2.76*10^(-2));
printf("\nTerminal velocity for the largest particle is %.3f m/sec",u2);
printf("\n\n Thus it is seen that all the particles settle at approximately the same velocity");

