//To calculate the temperature
F_E = 0.01;      //probability in percent
k = 1.38*10^-23;
e = 1.6*10^-19;
//let E-EF be X
X = 0.5;      //E-EF, eV
kT = X/(2.303*log10((1-F_E)*100));    //value of kT, eV
T = kT*e/k;        //temperature, K
printf("temperature is %d K",T);

//answer given in the book is wrong
