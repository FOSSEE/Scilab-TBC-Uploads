//ques-22.12
//Calculating atomic mass of an element
clc
den=10.3;//density (in g/mL)
a=314*10^-10;//cell edge (in cm)
Na=6.023*10^23;//(in /mol)
z=2;//BCC
M=(den*Na*a^3)/z;
printf("Atomic mass required is %.2f g/mol.",M);
