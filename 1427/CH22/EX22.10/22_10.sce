//ques-22.10
//Finding density of chromium
clc
a=300*10^(-10);//edge length (in pm)
Na=6.023*10^23;//avogadro number (in /mol)
M=52;//molar mass of Cr (in g/mol)
z=2;//BCC structure
den=(z*M)/(Na*a^3);//density
printf("The density of chromium is %.3f g/mL.",den);
