
clear//
//

//Variable Declaration
w=60 //Continous Load in lb/ft
L1=3 //Length in ft
L2=9 //Length in ft

//Calculations
//After carrying out the variable computations we get
A=([[1,1,0,0;(L1+L2),0,1,1;0.5*(L1+L2)**2,0,-(L1+L2),0;6**-1*(L1+L2)**3,0,-0.5*(L1+L2)**2,0]])
B=([w*L2;w*L2*0.5*L2;L2**3*10;L2**4*2.5])
C=linsolve(A,B)

//Result
printf("\n The values are as follows")
printf("\n Ra= %0.0f lb Ma= %0.0f lb.ft Rb= %0.0f lb and Mb= %0.0f lb.ft",-C(1),-C(2),-C(3),-C(4))
