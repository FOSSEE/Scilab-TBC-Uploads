// Example 2.5 page no-48
clear
clc

f=10*10^6 //Hz
h=6.626*10^-34 //Joules/sec
e=1.6*10^-19 //C
//(a)
E=h*f/e
printf("\n(a)Energy of each radiated quantum,\n\tE=%.3f*10^-27 Joules/Quantum\n\tE=%.2f*10^-8 eV/Quantum",h*f*10^27,E*10^8)

//(b)
E=1000  //Joule/sec
N=E/(h*f)
printf("\n\n(b)\nTotal number of quanta per sec, N=%.2f*10^29",N/10^29)

//(c)
o=10^-7
printf("\n\n(c)\nNumber of quanta emitted per cycle = %.2f*10^22 per cycle",o*N/10^22)
