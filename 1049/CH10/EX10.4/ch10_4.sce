clear;
clc;
V_s=400;
V_ph=V_s/2;
a=160;
r=cosd(180-a);
m=3;
V_or=r*(V_ph*(m/%pi)*sin(%pi/m));    printf("rms o/p voltage=%.3f V",V_or);
R=2;
X_L=1.5;
th=atand(X_L/R);
Z=sqrt(R^2+X_L^2);
I_or=V_or/Z;    printf("\nrms o/p current=%.2f A",I_or);
printf("\nphase angle of o/p current=%.2f deg",-th)
P=I_or^2*R;    printf("\no/p power=%.2f W",P);
