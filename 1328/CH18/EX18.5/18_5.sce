printf("\t example 18.5 \n");
Ts=400;
t0=200;
k=25; // from appendix
c=0.12; // from appendix
row=490; // from appendix
alpha=0.45; // alpha=(k/(c*row))
theta=15/60;
l=8/12; // ft
h=50;
X=(4*alpha*theta)/(l^2);
Z=(2*k)/(h*l);
printf("\t X is : %.2f \n",X);
printf("\t Z is : %.1f \n",Z);
Y=0.31; // Y=(Ts-t)/(Ts-t0), from fig 18.13
t=Ts+(t0-Ts)*(Y); // eq 18.43
printf("\t t is : %.0f F \n",t);
//end
