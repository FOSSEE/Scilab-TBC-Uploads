//ques-22.11
//Calculating value of avogadro number
clc
den=2.165;//density (in g/mL)
d=281*10^(-10);//interionic distance (in cm)
a=2*d;//edge length
z=4;//FCC
M=58.5;//molar mass (in g/mol)
Na=(z*M)/(den*a^3);
printf("The avogadro number calculated is %.3f*10^23 /mol.",Na*10^(-23));
