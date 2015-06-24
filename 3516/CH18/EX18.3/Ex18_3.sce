printf("\t example 18.3 \n");
Ts=1000; 
t0=100;
alpha=0.41; // alpha=(k/(c*row)), ft^2/hr
theta=15/60;
l=1; // ft
X=(4*alpha*theta)/(l^2);
printf("\t X is : %.2f \n",X);
Y=0.155; // Y=f3*(X)from fig 18.9 when L=infinity
t=Ts+(t0-Ts)*(Y); // eq 18.52
printf("\t t si : %.1e F \n",t);
// end
