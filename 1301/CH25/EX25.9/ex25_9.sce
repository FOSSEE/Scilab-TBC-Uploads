clc;
m=70;  //mass in g
a=14.01;  //atomic mass
moles=m/a;  //moles
h=1.008;  //atomic mass of hydrogen
mass=3*moles*h;  //mass of H
disp(moles,"Moles of N = ");  //displaying result
disp(mass,"Mass of H = ");  //displaying result
ma=15+70;  //mass of ammonia
disp((mass/ma)*100,"Proportion of Hydrogen = ");  //displaying result
disp((m/ma)*100,"Proportion of Nitrogen = ");  //displaying result