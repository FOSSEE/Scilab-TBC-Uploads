printf("\t example 18.8 \n");
k=0.3;
row=103;
c=0.25;
alpha=0.01164;
f=1/24;
t1=120;
t2=60;
printf("\t approximate values are mentioned in the book \n");
printf("\t temperature lag 6in below the surface \n");
x=6/12;
theta=(x/2)*(1/(3.14*f*alpha))^(1/2); // eq 18.65
printf("\t theta is : %.2f hr \n",theta);
printf("\t amplitude \n");
deltom=(t1-t2)/2;
printf("\t deltom is : %.0f F \n",deltom);
delt=(deltom)*(%e)^(-x*(3.14*f/alpha)^(1/2)); // eq 18.67
printf("\t delt is : %.1f F \n",delt); // calculation mistake in book
printf("\t temperature deviation after 2 hr \n");
theta1=2; // hr
deltx=(deltom)*((%e)^(-x*(3.14*f/alpha)^(1/2)))*cos((2*3.14*f*theta1)-(x*(3.14*f/alpha)^(1/2))); // eq 18.69
printf("\t deltx is : %.1f F \n",deltx);
printf("\t heat flow during the half period \n");
q=(k*deltom*(2/(3.14*f*alpha))^(1/2)); // eq 18.70
printf("\t heat flow is : %.0f Btu/(hr)*(ft^2) \n",q);
// end
