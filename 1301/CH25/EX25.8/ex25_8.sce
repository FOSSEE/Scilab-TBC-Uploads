clc;
m=50;     //mass of N in g
a=22.99; //atomic mass in g/mole
mole=m/a;  //moles of Na
ac=35.46;  //atomic mass of chlorine
n=2.17;     //no. of moles
mass=n*ac;  //mass of Cl
disp(mole,"Moles of Na = ");  //displaying result
disp(mass,"Mass oc Cl = ");   //displaying result
ps=m/127;  //proportion of sodium
pc=mass/127;  //proportion of chlorine
disp(ps*100,"Proportion of Sodium = ");  //displaying result
disp(pc*100,"Proportion of Chlorine = ");  //displaying result