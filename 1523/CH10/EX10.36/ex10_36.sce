// Network Functions : example 10.36 : (pg 10.35 & 10.36)
m=((5*sqrt(17))/(sqrt(20)*4));
a=90;
w=(atand(4)+atand(4/3)-(a)-atand(4/2));
printf("\nF(s) = (s+1)(s+3)/s(s+2))");
printf("\nAt s=j4");
//vmag = vector magnitudes
printf("\nPrduct of vmag from all zeros to j4/ Product of vmag from all poles to j4");
printf("\n =%.2f",m);
printf("\nphi(w)= atand(4)+atand(4/3)-atand(4/0)-atand(4/2)");
printf("\n = %.2f degrees",w);