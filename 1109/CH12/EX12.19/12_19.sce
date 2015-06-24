clear;
clc;
w1=2*(10^6);w2=3*(10^6);w3=4*(10^6);w=1*(10^6);Z=%i*100;
F=((w*w)-(w2*w2))/(((w*w)-(w1*w1))*((w*w)-(w3*w3)));
H=Z/(%i*w*F);H1=round(H*10^-8*100)/(100*10^-8);
A=((w1*w1)-(w2*w2))/((w1*w1)-(w3*w3));
B=((w3*w3)-(w2*w2))/((w3*w3)-(w1*w1));
C2=-1/(H1*A);
printf("Elements of the series type Foster network are:\n");
printf("-C2 = %f pf\n",fix(C2*(10^12)))
L2=1/(w1*w1*C2);
printf("-L2 = %f microhenry\n",round(L2*(10^6)*10)/10);
C4=-1/(H1*B);
printf("-C4 = %f pf\n",fix(C4*(10^12)));
L4=1/(w3*w3*C4);
printf("-L4 = %f microhenry",round(L4*(10^6)*10)/10);
