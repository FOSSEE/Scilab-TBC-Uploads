// Three-Phase Circuits :example 6.27 :(pg 6.30 & 6.31)
W1=2000;
W2=500;
W3=-500;
x=(sqrt(3)*((W1-W2)/(W1+W2)));
phi=atand(x);
pf=cosd(phi);
y=(sqrt(3)*((W1-W3)/(W1+W3)));
phi1=atand(y);
pf1=cosd(phi1);
printf("\nW1 = 2000W \nW2 = 500 W");
//(i) When both readings are same
printf("\nWhen W1 &W2 are same \nW1 = 2000W \nW2 = 500 W");
printf("\ntan(phi)= sqrt(3).(W1-W2/W1+W2) =%.3f ",x);
printf("\nphi=%.3f degrees",phi);
printf("\npf=cos(phi)=%.3f ",pf);//Power factor
//(ii) When the latter reading is obtained after reversing the connection to the current coil of 1 instrument
printf("\nWhen W2 is reversed \nW1= 2000 W \nW2= -500 W");
printf("\ntan(phi)= sqrt(3).(W1-W2/W1+W2) =%.3f ",y);
printf("\nphi=%.2f degrees",phi1);
printf("\npf=cos(phi)=%.2f ",pf1);//Power factor