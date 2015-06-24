

clc
// given that
C0=0.35 // given composition
C_a=0.022 // given composition
C_Fe3C=6.7 // given composition
C_p=0.76 
printf("Example 7.4\n")

printf("\n Part A: ")
W_a=(C_Fe3C-C0)/(C_Fe3C-C_a)
W_Fe3C=(C0-C_a)/(C_Fe3C-C_a)

printf("\n Mass fraction of total ferrite phase  is %.2f",W_a)
printf("\n Mass fraction of cementide phase is %.2f\n",W_Fe3C)

printf("\n Part B:")
Wp=(C0-C_a)/(C_p-C_a)
W_a1=(C_p-C0)/(C_p-C_a)

printf("\n Mass fraction of Pearlite is %.2f",Wp)
printf("\n Mass fraction of proeutectoid ferrite is %.2f\n",W_a1)

printf("\n Part C:")

Wae=W_a-W_a1
printf("\n Mass fraction of eutectoid ferrite : %.3f\n",Wae)
// Answer in book is 0.39. It is due to considering different number of significant figure at intermediate steps


