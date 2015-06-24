clear
clc
disp('Exa-10.5');
p=0.971; A=6.023*10^23; m=23.0;    // various given values and constants
c= (p*A/m)*10^6;                   // atoms per unit volume
hc=1240; mc2=0.511*10^6;           // hc=1240 eV.nm
E= ((hc^2)/(2*mc2))*(((3/(8*%pi))*c)^(2/3)); //value of fermi energy
printf('The fermi energy for sodium is %f eV',E*10^-18);//multiply by 10^-18 to convert metres^2 term to nm^2
