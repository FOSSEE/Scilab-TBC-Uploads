printf("\t example 18.2 \n");
tav=500; // F
Ts=1000; 
t0=100;
c=0.12; // Btu/(lb)*(F)
k=24; // Btu/(hr)*(ft^2)*(F/ft)
row=488; // lb/ft^3
alpha=0.41; // alpha=(k/(c*row)), ft^2/hr
x=0.333; // ft
theta=4;
printf("\t values are approximately mentioned in the book \n");
X=(x/(2*(alpha*theta)^(1/2)));
printf("\t X is : %.2f \n",X);
Y=0.142; // Y=f1(X) from fig 18.7 
t=Ts+(t0-Ts)*(Y); // eq 18.43
printf("\t t si : %.0f F \n",t);
q=((k*(Ts-t0))/(3.14*alpha*theta)^(1/2)); // q=(Q/A),from eq 18.47
printf("\t q is : %.0f Btu/(hr)*(ft^2) \n",q);
q1=(2*k*(Ts-t0)*(theta/(3.14*alpha))^(1/2)); // q=(Q1/A). eq 18.49
printf("\t The total heat which flowed through a square foot of wall in the 4 hr is : %.1e Btu/ft^2 \n",q1);
// end
