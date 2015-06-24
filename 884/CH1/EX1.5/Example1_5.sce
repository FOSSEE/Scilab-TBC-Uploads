// Significant figures

clear;
clc;

printf("\t Example 1.5\n");

//(a)
A=11254.1;//g
B=0.1983;//g
C=A+B;//g

printf("\t(a) ( %5.1f + %1.4f )g = %6.1f g\n",A,B,C);

//(b)
A=66.59;//L
B=3.113;//L
C=A-B;//L

printf("\t(b) ( %5.2f - %1.4f )L = %6.2f L\n",A,B,C);

//(c)
A=8.16;//m
B=5.1355;
C=A*B;//m

printf("\t(c) %5.2f m * %1.4f = %6.1f m\n",A,B,C);

//(d)
A=0.0154;//kg
B=88.3;//mL
C=A/B;//kg/mL

printf("\t(d) %1.4f kg / %2.1f mL = %1.2f *10^-4 kg/mL\n",A,B,C*10^4);

//(e)
A=2.64*10^3;//cm
B=3.27*10^2;//cm
C=A+B;//cm

printf("\t(e) ( %1.2f *10^3 + %1.2f *10^2 )cm = %1.2f *10^3 cm\n",A*10^-3,B*10^-2,C*10^-3);

//End
