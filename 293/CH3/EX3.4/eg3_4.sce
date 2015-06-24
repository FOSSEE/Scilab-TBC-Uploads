// resistances in ohms 
R1 = 25;
R2 = 300;
R3 = 80;
R4 = 30;
R5 = 60;

P5 = 15; //power dissipated in R5 (in watt)

I5 = sqrt(P5/R5); //current flowing through R5
V5 = R5*I5 ; //voltage across R5
Vcd = V5; //voltage across cd

I4 = Vcd/R4; //current flowing through R4
Icd = I5 + I4; //current flowing through cd

Vbd = (Icd*R3)+Vcd ; //voltage across bd
Ibd = (Vbd/R2)+Icd; //current through bd

V1 = R1*Ibd; //voltage across R1

E = V1 + Vbd; 
disp(E,"E = ")

//Result : Value of E for which power dissipation in R is 15W = 200V