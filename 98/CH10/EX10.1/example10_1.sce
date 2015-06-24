//Chapter 10
//Example 10_1
//Page 133

clear;clc;

load_kw=1100;
vr=33;
pf=0.8;
r=10;
xl=15;

phir=acos(0.8);
i=load_kw/vr/pf;
z=r+%i*xl;
i_vector=i*(cos(phir)- %i*(sin(phir)));
vs=vr*1000+z*i_vector;
alpha=imag(vs)/real(vs);
phis=phir+alpha;
loss=i^2*r;
op=load_kw;
ps=op+loss/1000;
n=op/ps*100;

printf("Line current = %.2f A \n", i);
printf("             = %.2f+j(%.2f) \n\n", real(i_vector), imag(i_vector));

printf("(i) Sending end voltage = %.2f+j(%.2f) \n", real(vs), imag(vs));
printf("    Magnitude of Vs = %.0f V \n\n", abs(vs));
printf("(ii) Angle betwen Vs and Vr = %.2f degrees \n", alpha*180/%pi);
printf("     Sending end power factor angle = %.2f degrees \n", phis*180/%pi);
printf("     Sending end power factor = %.2f \n\n", cos(phir));
printf("(iii) Line loss = %.2f kW \n", loss/1000);
printf("      Output delivered = %.0f kW \n", op);
printf("      Power sent = %.3f kW \n", ps);
printf("      Transmission efficiency = %.2f %% \n", n);




