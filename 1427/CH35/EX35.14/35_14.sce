//ques-35.14
//Calculating bond length for HBr molecule
clc
s=16.94;//spacing between lines in rotational spectra (in /cm)
H=1;//molar mass of H (in g/mol)
Br=80;//molar mass of Br (in g/mol)
r_m=(H*Br/1000)/((H+Br)*6.023*10^23);//reduced mass (in kg)
B=s/2;
I=(6.625*10^-34)/(8*%pi^2*B*100*3*10^8);
r=sqrt(I/r_m);
printf("The bond length for HBr molecule is %.1f pm.",r*10^12);
