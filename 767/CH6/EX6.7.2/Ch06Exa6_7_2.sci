// Scilab code Exa6.7.2 : To calculate the frequency of deutron accelerated in a cyclotron. Page 271(2011)
B= 2.475; // Magnetic field, tesla
q = 1.6e-019; // Charge of the deutron, C
m = 2*1.67e-027; // Mass of the deutron, Kg
f = B*q/(2*%pi*m*10^06); // Frequency of the deutron,MHz
printf("\nFrequency of the deutron:  %4.2f MHz ", f)
// Result
//   Frequency of the deutron:  18.87 MHz