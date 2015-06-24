
//To determine the Demand and supply parameter of four consumers
//Page 74
clc;
clear;

//Maximum Demands of various users
MD1=2*(10^3); //9pm
MD2=2*(10^3); //12 noon
MD3=8*(10^3); //5pm
MD4=4*(10^3); //8pm
MDT=MD1+MD2+MD3+MD4; //Sum of all Maximum Demands

//Demands of various users
D1=1.6*(10^3); //8pm
D2=1*(10^3); //8pm
D3=5*(10^3); //8pm

//The Number after the Alphabets represents the Consumer

//Maximum Demand of the System arises at 8.00 PM
MDS = D1+D2+D3+MD4;

TDF=MDT/MDS; //Diversity Factor
//Given Values
//Average Loads
AL2=500;
AL4=1000;
//Load Factors
LF1=15/100;
LF3=25/100;
//Calculated Values
//Average Loads
AL1=LF1*MD1;
AL3=LF3*MD3;
//Load Factors
LF2=AL2*100/MD2;
LF4=AL4*100/MD4;

ALS=AL1+AL2+AL3+AL4;  //Combined Average Loads
LFS=ALS*100/MDS; //Combined Load Factor

printf('i) The Diversity Factor is %g\n',TDF)
printf('ii) The Average load and Load factor of:\n')
printf(' Consumer 1 : %g W and %g percent\n',AL1,LF1*100)
printf(' Consumer 2 : %g W and %g percent\n',AL2,LF2)
printf(' Consumer 3 : %g W and %g percent\n',AL3,LF3*100)
printf(' Consumer 4 : %g W and %g percent\n',AL4,LF4)
printf('iii) The Combined Load Factor and The Combined Average Load is %g percent and %g W respectively\n',LFS,ALS )
