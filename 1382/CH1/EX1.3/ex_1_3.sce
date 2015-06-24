// Example 1.3: tuning range of the circuit
clc, clear
C1=5*10^-12; // minimum capacitance in  farad
C2=50*10^-12; // maximum capacitance in  farad
L=10*10^-3; // in henry
CTmin= (C1/2);//minimum total capacitance of varactor diode
p= (sqrt(L*CTmin)); // calculating square root
q= (2*3.14*p);
fomax= (1/q); // maximum resonant frequency
CTmax= ((C2*C2)/(C2+C2));//maximum total capacitance of varactor diode
r= (sqrt(L*CTmax)); // calculating square root
s= (2*3.14*r);
fomin= (1/s); // minimum resonant frequency
disp(fomax,"maximum resonant frequency in(Hz)");
disp(fomin,"minimum resonant frequency in(Hz)");
