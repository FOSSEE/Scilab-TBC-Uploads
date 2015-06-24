//chapter20
//example20.10
//page445

R2=1 // kilo ohm
R1=2 // kilo ohm
Vz=6 // V
Vbe=0.7 // V

m=R2/(R1+R2)
A_CL=1/m
Vout=A_CL*(Vz+Vbe)

printf("regulated output voltage = %.3f V \n",Vout)
