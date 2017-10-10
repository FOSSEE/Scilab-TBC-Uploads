//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.9
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Sb=300                              //rated power of transformer in MVA
Vb1=13.8                            // Terminal 1 base voltage in kV
Vb2=199.2                           // Terminal 2 base voltage in kV
Vb3=19.92                           // Terminal 3 base voltage in kV
X12old=0.10                         //given per unit leakage reactance terminal 1 and 2 
X13old=0.16                         //given per unit leakage reactance terminal 1 and 3
X23old=0.14                         //given per unit leakage reactance terminal 2 and 3
Sb12=300                            //rated power corresponding to leakage reactance X12 in MVA
Sb13=50                             //rated power corresponding to leakage reactance X13 in MVA
Sb23=50                             //rated power corresponding to leakage reactance X23 in MVA

X12new=X12old*(Sb/Sb12)             //new per unit leakage reactance terminal 1 and 2 
X13new=X13old*(Sb/Sb13)             //new per unit leakage reactance terminal 1 and 3 
X23new=X23old*(Sb/Sb23)             //new per unit leakage reactance terminal 2 and 3
X1=(1/2)*(X12new+X13new-X23new) 
X2=(1/2)*(X12new+X23new-X13new) 
X3=(1/2)*(X13new+X23new-X12new)  

printf('The new per unit leakage reactance terminal 1 and 2 is %.4f pu\n',X12new);
printf('The new per unit leakage reactance terminal 1 and 3 is %.4f pu\n',X13new);
printf('The new per unit leakage reactance terminal 2 and 3 is %.4f pu\n',X23new);
printf('The per unit reactance of terminal 1 is %.4f pu\n',X1);
printf('The per unit reactance of terminal 2 is %.4f pu\n',X2);
printf('The per unit reactance of terminal 3 is %.4f pu\n',X3);

