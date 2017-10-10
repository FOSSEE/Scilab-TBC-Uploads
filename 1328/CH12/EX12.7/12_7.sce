printf("\t example 12.7 \n");
printf("\t approximate values are mentioned in the book \n");
V=7.5; // fps
W=250000;
CCl=0.85;
CT=1;
CL=1;
Ct=263;
UD=(CCl*CT*CL*Ct*(V^(1/2)));
printf("\t design overall coefficient is : %.0f Btu/(hr)*(ft^2)*(F) \n",UD);
A=(W/8);
printf("\t area is : %.0f ft^2 \n",A);
a1=0.229; // ft^2/ft, table 10
at=0.475; // in^2, table 10
t1=70;
Ts=91.72; //F
n=2;
L=26;
t2=(Ts)-((Ts-t1)/((10)^(0.000279*UD*L*n*a1/(V*at)))); 
printf("\t t2 is : %.1f F \n",t2); // calculation mistake in book
Go=(W*950)/((t2-t1)*500);
printf("\t circulation rate is : %.0f gpm \n",Go);
// end

