//ques-15.4
//Calculating equilibrium concentration of hydrogen and iodine and hydrogen iodide
clc
m1=12;//mass of hydrogen (in g)
m2=762;//mass of iodine (in g)
Kc=64;//equilibrium constant
a=m1/2;//moles of H2
b=m2/254;//moles of I2
//Kc=(4*x^2)/((a-x)*(b-x))
//Solving, 60*x^2-576*x+1152 = 0
D=576^2-4*60*1152;
x=(576-sqrt(D))/(2*60);
printf("Equilibrium concentrations of hydrogen, iodine and hydrogen iodide are %.2f, %.2f and %.0f g respectively.",(a-x)*2,(b-x)*254,(2*x)*128);
