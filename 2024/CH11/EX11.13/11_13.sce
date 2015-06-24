clc
//Initialization of variables
dn=-0.5
R0=1.986
T=537 //R
Qp=-121664
//calculations
Qv= Qp- dn*R0*T
//results
printf("Heat of reaction at constant volume = %d Btu/mol",Qv)
