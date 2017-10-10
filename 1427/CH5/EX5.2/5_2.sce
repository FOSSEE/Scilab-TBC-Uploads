//ques-5.2
//Calculating cell constant and specific conductance of solution
clc
A=1.25;//area of plates (in cm^2)
l=10.5;//distance between plates (in cm)
R=2000;//resistance (in ohms)
c=l/A;//cell constant (in /cm)
k=c/R;//specific conductance (in mho/cm)
printf("The cell constant is %.1f /cm and specific conductance of solution is %.4f mho/cm.",c,k);
