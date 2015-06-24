//To calculate the change in magnetic moment
r = 5.29*10^-11;    //radius of orbit, m
B = 2;     //field applied, T
e = 1.602*10^-19;     //charge of electron, coulomb
m = 9.108*10^-31;    //mass of electron, kg
mew_ind = e^2*r^2*B/(4*m);      //change in magnetic moment
printf("change in magnetic moment in Am^2 is");
disp(mew_ind);
