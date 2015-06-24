//CAPTION: Conductivity_of_an_n-Type_GaAs_Gunn_Diode
//chapter_no.-7,  page_no.-294
//Example_no.7-2-1
clc;


//Calculate_the_conductivity_of_the_diode
e=1.6*(10^-19);
nl=(10^10)*(10^6);//electron_density_at_lower_valley
nu=(10^8)*(10^6);//electron_density_at_upper_valley
ul=8000*(10^-4);//electron_mobility_at_lower_valley
uu=180*(10^-4);//electron_mobility_at_upper_valley
o=e*((nl*ul)+(nu*uu));
o=o*1000;
disp(o,'the_conductivity_of_the_diode(in mmhos)is =');

