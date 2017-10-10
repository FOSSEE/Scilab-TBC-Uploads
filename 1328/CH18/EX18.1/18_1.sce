printf("\t example 18.1 \n");
// specific gravity of benzene is 0.88
// specific heat of benzene is 0.48 Btu/(lb)*(F)
U=50;
A=400;
T1=400;
t1=100;
t2=300;
c=0.48;
w=40000;
C=0.60;
W=10000;
printf("\t values are approximately mentioned in the book \n");
printf("\t for a \n");
M=(7500*8.33*0.88);
printf("\t weight of benzene is : %.1e lb \n",M);
Q1=(w*c);
printf("\t Q1 is : %.2e Btu/(hr)*(F) \n",Q1);
Q2=(W*C);
printf("\t Q2 is : %.0e Btu/(hr)*(F) \n",Q2);
Ks=((%e)^(U*A*((1/Q1)-(1/Q2)))); // eq 18.16
printf("\t Ks is : %.3f \n",Ks);
Z=log((T1-t1)/(T1-t2));
printf("\t Z is : %.3f \n",Z);
theta=((M*(Z)*(Ks*6000-(19200)))/((Ks-1)*40000*6000));
printf("\t theta is : %.1f hr \n",theta);
printf("\t for b \n");
R=(Q1/Q2);
printf("\t R is : %.1f \n",R);
KT=((%e)^(U*(A/Q1)*(1+R^2)^(1/2)));
printf("\t KT is : %.0f \n",KT);
S=((2*(KT-1))/((KT*(R+1+(1+R^2)^(1/2)))-(R+1-(1+R^2)^(1/2)))); // eq 18.24
printf("\t S is : %.3f \n",S);
theta1=((M*Z)/(0.266*40000)); // eq 18.25
printf("\t theta1 is : %.2f hr \n",theta1);
printf("\t for c \n");
U1=100;
A1=200;
K8=((%e)^(U*(A/(2*Q1))*(1+R^2)^(1/2))); // eq 18.32
S1=((2*(K8-1)*(1+((1-0.266)*(1-(3.2*0.266)))^(1/2)))/(((K8-1)*(3.2+1))+((K8+1)*(1+3.2^2)^(1/2)))); // eq 18.31
printf("\t K8 is : %.2f \n",K8);
printf("\t S1 is : %.3f \n",S1);
theta2=((M*Z)/(0.282*40000)); // eq 18.25
printf("\t theta2 is : %.2f hr \n",theta2);
printf("\t for d \n");
K9=((%e)^(U*(A/(Q1))*(R-1)));
S2=((K9-1)/((K9*R)-1)); // eq 18.36
printf("\t K9 is : %.2f \n",K9);
printf("\t S2 is : %.2f \n",S2);
t=100;
t1=t+(S2*(T1-t)); // 18.37
printf("\t t1 is : %.0f F \n",t1);
t2=t1+(S2*(T1-t1));
printf("\t t2 is : %.0f F \n",t2);
t3=t2+(S2*(T1-t2));
printf("\t t3 is : %.0f F \n",t3);
t4=t3+(S2*(T1-t3));
printf("\t t4 is : %.0f F \n",t4);
x=0.23;
printf("\t fractional circulation is : %.2f \n",x);
N=3+x;
printf("\t total fractional circulation : %.2f \n",N);
theta3=(N*(M/w));
printf("\t theta3 is : %.2f \n",theta3);
// end
