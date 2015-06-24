//chapter20
//example20.11
//page445

R2=10 // kilo ohm
R1=30 // kilo ohm

m=R2/(R1+R2)
A_CL=1/m

printf("closed loop voltage gain = %.3f \n",A_CL)
