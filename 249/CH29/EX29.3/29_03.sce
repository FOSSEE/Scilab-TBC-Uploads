clear
clc
CAo=6;CM=0.4;//kg/m3
V=1;//m3
k=4;
//From fig 29.5
N=sqrt(1+(CAo/CM));
kt_op=N/(N-1);
C_by_A=0.1;
t_op=kt_op/k;
v_op=V/t_op;
//The feed rate of glucose
FAo=v_op*CAo;
printf("\n The feed rate of glucose is %f",FAo)
printf("kg/hr")
//Max consumption rate of glucose is
XA=N/(N+1);
c_max=FAo*XA;
printf("\n Max consumption rate of glucose is %f ",c_max)
printf("kg/hr")
//Max production rate of E.coli is
Cc_op=(C_by_A)*CAo*N/(N+1);
Fcmax=v_op*Cc_op;
printf("\n Max production rate of E.coli is %f",Fcmax)
printf("kg/hr")