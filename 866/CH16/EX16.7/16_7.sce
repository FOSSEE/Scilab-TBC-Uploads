clc
//initialisation of variables
F1= -6 //KN
F2= -10 //KN
W= -12 //KN/m
E= 200000 //N/mm^2
I= 12000 //mm^4
x1= 0.5 //m
x2= 0.5 //m
x3= 0.5 //m
x4= 0.5 //m
x5= 1.0 //m
//CALCULATIONS
vb0= 8.88/(E*I)
vc0= 9.089/(E*I)
a11= 0.45/(E*I)
a21= 0.39/(E*I)
a22= a11
a12= a21
A=[0.45 0.39;0.39 0.45]
b=[8.88;9.08]
c=A\b
R1=c(1,1)
R2=c(2,1)
Ra= -((F1*(x2+x3+x4+x5)+R1*(x3+x4+x5)+F2*(x4+x5)+R2*(x5)+(W*x5)*(x5/2)))/(x1+x2+x3+x4+x5)
Rd= -F1-F2-W*x5-R1-R2-Ra
//RESULTS
printf ('R1= %.2f KN',R1)
printf (' \n R2=%.2f KN',R2)
printf (' \n Ra=%.2f KN',Ra)
printf (' \n Rd=%.2f KN',Rd)
