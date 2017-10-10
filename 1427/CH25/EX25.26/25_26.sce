//ques-25.26
//Calculating diameter of oxygen molecules
clc
b=0.0318;//(in L/mol)
r=((b*1000)/(4*6.023*10^23*(4/3)*%pi))^(1/3);
printf("The diameter of oxygen molecule is %.4f*10^-8 cm.",2*r*10^8);
