//Temperature Computation

clear;
clc;

printf("\tExample 17.3\n");

dV=0.568;                 //Potential diff. b/w 2 electrodes
V_Pb=-0.126;
V_Zn=-0.763;

C_Zn=0.01;
C_Pb=0.0001;

R=8.31;                //Gas constt
F=96500;               //Faraday's constt
n=2;                   //electron exchange

T=-n*F*(dV-(V_Pb-V_Zn))/(R*log(C_Zn/C_Pb));

printf("\nFinal temp is %.1f K\n",T);

//End