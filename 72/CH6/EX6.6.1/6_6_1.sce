//CAPTION: Power_Dissipation_of_a_Three-Phase_CCD

//chapter_no.-6,  page_no.-278
//Example_no.6-6-1
clc;


// Calculate_the_power_dissipation_per_bit
n=3;
f=10*(10^6);
V=10;
Qmax=.04*(10^-12);
P=n*f*V*Qmax;
P=P*(10^6);
disp(P,'the_power_dissipation_per_bit(uW)is=');