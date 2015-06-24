 
//Part (a)
V= 1.00; //volume, cm^3
V= V*10^(-6); //converting to m^3
dI= 2.404; //standard value of definite Integral used
k= 8.617*10^(-5); //Boltzmann constant, eV/K
h= 4.13*(10^(-15)); //Planck's constant, eV.s
T= 1000; //temperature, K
c= 3 *(10^8); //speed of light, m/s
N= 8*(%pi)*V*dI*[(k*T/(h*c))^3];
disp(N,"the number of photons is: ")
 
//Result
// the number of photons is:    
//    2.032D+10  
 
//Part(b)
Sig= 5.670*10^(-8); //Stefan's constant, W/m^2.K^4 , refer to Page 317
Ephoton= Sig*(c^2)*(h^3)*T/(2.405*(2*(%pi)*(k^3))); //J
disp(Ephoton,"The average energy of the photons, in J, is: ")

//Result
// The average energy of the photons, in J, is:    
//   3.718D-20  
