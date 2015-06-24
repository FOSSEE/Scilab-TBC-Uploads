clear;
clc;
R=3;
X_L=4;
phi=atand(X_L/R);    printf("min firing angle=%.2f deg",phi);
printf("\nmax firing angle=%.0f deg",180);
V_s=230;
Z=sqrt(R^2+X_L^2);
I_or=V_s/Z;    printf("\nmax value of rms load current=%.0f A",I_or);
P=I_or^2*R;    printf("\nmax power=%.0f W",P);
I_s=I_or;
pf=P/(V_s*I_s);    printf("\ni/p pf=%.1f",pf);

I_TAM=sqrt(2)*V_s/(%pi*Z);    printf("\nmax value of avg thyristor current=%.3f A",I_TAM);
I_Tm=sqrt(2)*V_s/(2*Z);    printf("\nmax value of rms thyristor current=%.3f A",I_Tm);

f=50;
w=2*%pi*f;
di=sqrt(2)*V_s*w/Z;    printf("\ndi/dt=%.0f A/s",di);