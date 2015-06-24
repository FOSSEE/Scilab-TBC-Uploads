//To calculate the electron concentration
Na = 5*10^23;      //atoms of boron
Nd = 3*10^23;      //arsenic atoms
p = 2*(Na-Nd)/2;      //hole concentration per m^3
ni = 2*10^16;     //intrinsic charge carriers per m^3
n = ni^2/p;       //electron concentration per m^3
printf("electron concentration per m^3 is");
disp(n);
