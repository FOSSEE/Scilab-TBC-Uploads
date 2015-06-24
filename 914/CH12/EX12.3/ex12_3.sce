clc;
warning("off");
printf("\n\n example12.3 - pg569");
U=3;  //[m/sec]
x1=1;  //[m]
x2=2;  //[m]
p=1/(1.001*10^-3);  //[kg/m^3];
mu=1*10^-3;  //[kg/m*sec]
Nre1=(x1*U*p)/(mu);
Nre2=(x2*p*U)/(mu);
tauw=(1/2)*(p*(U^2))*((2*log10(Nre1)-0.65)^(-2.3));
B=1700;
Cd=(0.455*(log10(Nre2))^-2.58)-(B/(Nre2));
Lb=2.0;
F=(1/2)*(p*(U^2))*(Lb)*(Cd);
printf("\n\n the drag on the plate is \n F = %f kg*m/sec^2 = %f N",F,F);


