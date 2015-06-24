//Problem 5.15:

//initializing the variables:
MWDCB = 147;
MWTCB = 290

//calculation:
//for 1 lb of dichlorobenzene (DCB), the following mass of HCl is produced:
HCLpd1 = 2/MWDCB
//for 1lb of tetrachlorobiphenyl (TCB), the following mass of HCl is produced
HCLpd2 = 4/MWTCB
x = (HCLpd2 - HCLpd1)*100/HCLpd1

printf("\n\nResult\n\n")
printf("\n the consumption of soda ash be increased by %.2f percent",x)