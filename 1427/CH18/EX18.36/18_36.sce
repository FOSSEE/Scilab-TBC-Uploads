//ques-18.36
//Calculating w q U H G A and S
clc
T=373;//boiling point of water (in K)
P=1;//pressure (in atm)
L=40.67;//latent heat of vapourisation (in kJ/mol)
R=8.314;//in J/K/mol
w=-R*T/1000;
H=-L;
q=H;
U=H-w;
G=0;
A=-w;
S=-(q*1000)/T;
printf("w=%.1f kJ/mol, q=H=%.2f kJ/mol, U=%.2f kJ/mol, G=%d; A=%.1f kJ/mol and S=%.0f J/K/mol.",w,q,U,G,A,S);
