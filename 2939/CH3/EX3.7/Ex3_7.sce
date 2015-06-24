
// Ex3_7

clc;

// Given:
B=11.009305;
C1=12;
C2=11.001433;
p=1.0078;
n=1.0087;
Al=26.981535;
Si1=27.976927;
Si2=26.986705;
// Solution:
m1=(B+p-C1);//(a)
E1=m1*931;// of last proton in C in MeV
printf("\n The binding energy for the last proton in 12C is = %f MeV",E1)

m2=(C2+n-C1);//(b)
E2=m2*931;// of last neutron in C in MeV
printf("\n The binding energy for the last neutron in 12C is = %f MeV",E2)

m3=(Al+p-Si1);//(c)
E3=m3*931;// of last proton in Si in MeV
printf("\n The binding energy for the last proton in 28Si is = %f MeV",E3)

m4=(Si2+n-Si1);//(d)
E4=m4*931;// of last neutron in Si in MeV
printf("\n The binding energy for the last neutron in 28Si is = %f MeV",E4)

// Note: There is a calculation error in the textbook for the (b) part.
