clear
clc
M1=40;//total amount of mixture of calcium and aluminium in gm
w1=54;//amount of aluminium in CaAl2 in gm
w2=81;//amount of aluminium in CaAl3 in gm
W1=70;//total amount of aluminium in gm
X1=(W1-((w2/M1)*M1))/((w1/M1)-(w2/M1));//amount of calcium in gm
printf('X1=%.1f gm',X1)
N1=(w1/M1)*X1;//amount of calcium in mixture of CaAl2 in gm
printf('\nN1=%.1f gm',N1)
N2=(w2/M1)*(M1-X1);//amount of aluminium in mixture of CaAl3 in gm
printf('\nN2=%.1f gm',N2)
M2=20;//total amount of mixture of calcium and aluminium in gm
W2=90;//total amount of aluminium in gm
w3=86;//amount of aluminium after melting
M3=14;//percent of clacium mass melted
X2=(W2-((w3/M3)*M2))/((w2/M1)-(w3/M3));//amount of calcium in gm
printf('\nX2=%.1f gm',X2)
N3=(w2/M1)*X2;//amount of calcium in mixture of CaAL2 in gm
printf('\nN3=%.1f gm',N3)
N4=(w3/M3)*(M2-X2);//amount of aluminium in mixture of CaAL3 in gm
printf('\nN4=%.1f gm',N4)

//There are some errors in the solution given in textbook
//page 318

//There are some errors in the solution given in textbook

