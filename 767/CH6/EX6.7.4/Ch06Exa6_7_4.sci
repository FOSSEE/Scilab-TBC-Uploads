// Scilab code Exa6.7.4 : To calculate the frequency of alternating field applied to dees. Page 272(2011)
q = 1.6e-019; // Charge of the proton, C
m = 1.67e-027; // Mass of the proton, Kg
B = 1.4; // Magnetic field , tesla
f = B*q/(2*%pi*m*10^06); // Frequency of the applied field, tesla
printf("\n Frequency of the applied field :  %4.2f MHz", f)
// Result
//     Frequency of the applied field :  21.35 MHz 