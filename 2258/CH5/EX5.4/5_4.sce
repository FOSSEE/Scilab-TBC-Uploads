clc();
clear;
// To calculate the critical temperature
lamda_T1=396;           //pentration depth in armstrong
lamda_T2=1730;          //pentration depth in armstrong
T1=3;                     //temperature in K
T2=7.1;                   //temperature in K
//lamda_T2^2=lamda_0^2*(((Tc^4-T2^4)/Tc^4)^-1)
//lamda_T12^=lamda_0^2*(((Tc^4-T1^4)/Tc^4)^-1)
//dividing lamda_T2^2 by lamda_T1^2 = (Tc^4-T1^4)/(Tc^4-T2^4)
//let A=lamda_T2^2 and B=lamda_T1^2
A=lamda_T2^2;
B=lamda_T1^2;
C=A/B;
X=T1^4;
Y=T2^4;
//C*((TC^4)-Y)=(Tc^4)-X
//C*(Tc^4)-(Tc^4)=C*Y-X
//(Tc^4)*(C-1)=(C*Y)-X
//let Tc^4 be D
//D*(C-1)=(C*Y)-X
D=((C*Y)-X)/(C-1);
Tc=D^(1/4);
printf("the critical temperature is %f K",Tc);
