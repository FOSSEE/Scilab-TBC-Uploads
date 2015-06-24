clc;
//Chapter 1,Example 1.5,Pg 1.11
printf("\n For silver wire R1 = (p1 X l1)/A1 \n")
printf("\n For Manganin wire R2= (p1 X l2)/A2 \n")
printf("R2/R1 = (p2 X l2 X A1)/(p1 X l1 X A2)\n")
R1=2 //resistance of silver wire in ohms
d1=1 //assuming the diameter of the silver wire to be 1 unit
d2=d1/3
l1=1 //assuming the length of the silver wire to be 1 unit
l2=l1/3
p1=1 //assuming the resistivity of silver wire is 1 unit
p2=30*p1
A1=%pi*d1^2/4
A2=%pi*d2^2/4
R2=p2*l2/A2
Rone=p1*l1/A1
R=R2/Rone
R2=R1*R
printf("\n Resistance of manganin wire = %.0f ohms\n",R2)
