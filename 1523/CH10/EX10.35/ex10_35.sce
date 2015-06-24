// Network Functions : example 10.35 : (pg 10.35)
m=(2/(sqrt(2)*sqrt(10)));
a=90;
x=(a-atand(3)-atand(1));
printf("\nF(s) =(4s/s^2+2s+2) = 4s/(s+1-j)*(s+1-j)");
printf("\n At s=j2");
//pmag = phasor magnitudes
printf("\n|F(j2)|=Product of pmag from all zeros to j2/Product of pmag from all poles to j2");
printf("\n = %.3f",m);
printf("\nf(w) = atand(2/0)-atand(3)-atand(1)= %.2f degrees",x);