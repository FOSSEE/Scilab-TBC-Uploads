//calculations for first order reactions

clear;
clc;

printf("\t Example 13.4\n");

t=8.8*60;//time, s
k=6.7*10^-4;//rate constant, s-1

//(a)
Ao=0.25;//initial conc, M
A=exp(-k*t+log(Ao));//final conc, M

printf("\t (a) the concentration of cyclopropane at given time is : %4.2f M\n",A);

//(b)
A=0.15;//initial conc, M
Ao=0.25;//final conc, M
t=-log(A/Ao)/(60*k);//time, min

printf("\t (b) the time required is : %2.0f min\n",t);

//(c)
percent=74;
//let initial conc be 1
Ao=1;//initial conc, M
A=1-percent/100;//final conc, M
t=-log(A/Ao)/(k*60);//time, min

printf("\t (c) the time required for required conversion is : %2.0f min\n",t);

//End
