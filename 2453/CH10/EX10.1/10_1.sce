//To calculate the relative population
c = 3*10^8;    //speed of light, m/sec
h = 6.6*10^-34;    //planck's constant
e = 1.6*10^-19;
T = 300;    //temperature, K
K = 8.61*10^-5;
lamda = 6943;    //wavelength, armstrong
lamda = lamda*10^-10;     //wavelength, m
// let E2 - E1 be E
E = h*c/lamda;      //energy, J
E = E/e;       //energy, eV
//let population ratio N2/N1 be N
N = exp(-E/(K*T));
printf("relative population of 2 states is");
disp(N);

//answer given in the book is wrong
