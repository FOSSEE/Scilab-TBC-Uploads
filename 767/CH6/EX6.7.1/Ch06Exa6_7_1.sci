// Scilab code Exa6.7.1 : To calculate the maximum energy, oscillator frequency and number of revolutions of proton accelerated in a cyclotron. Page 270(2011)
V = 20e+03; // Potential difference across the dees, V
r = 0.28; // Radius of the dees, m 
B = 1.1; // Magnetic field, tesla
q = 1.6e-019; // Charge of the proton, C
m = 1.67e-027; // Mass of the proton, Kg
E_max = B^2*q^2*r^2/(2*m*1.6e-013); // Maximnum energy acquired by protons,MeV
f = B*q/(2*%pi*m*10^06); // Frequecy of the oscillator,MHz
N = E_max*1.6e-013/(q*V); // Number of revolutions, 
disp(N)
printf("\n Maximum energy acquired by proton   =  %4.2f MeV \n Frequency of the oscillator   = %4.2f MHz \n Number of revolutions    =  %d revolutions ", E_max,f,N)
// Result
//    Maximum energy acquired by proton   =  4.54 MeV 
//  Frequency of the oscillator   = 16.77 MHz 
//  Number of revolutions    =  227 revolutions