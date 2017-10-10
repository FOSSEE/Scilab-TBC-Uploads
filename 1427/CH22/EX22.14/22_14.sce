//ques-22.14
//To show that KBr has a FCC structure
clc
den=2.73;//density (in g/mL)
a=654*10^-10;//edge length (in cm)
Na=6.023*10^23;//(in /mol)
m1=39;//molar mass of K (in g/mol)
m2=80;//molar mass of Br (in g/mol)
M=m1+m2;
z=(den*Na*a^3)/M;
printf("As z = %.0f, therefore KBr has a FCC structure.",z);
