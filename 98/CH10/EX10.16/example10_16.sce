//Chapter 10
//Example 10_16
//Page 258

clear;clc;

pd=30*1e6;
v_r=132*1e3;
pfr=0.85;
z=20+%i*52;
y=%i*315*1e-6;

a=1+z*y/2;
d=a;
b=z*(1+z*y/4);
c=y;

vr=v_r/sqrt(3)/1000;
ir=pd/sqrt(3)/v_r/pfr;
ir_p=ir*(pfr-%i*sin(acos(pfr)));
vs=a*vr*1000+b*ir_p;
mag_vs=abs(vs)/1000;
ll=mag_vs*sqrt(3);

reg=(mag_vs/abs(a)-vr)/vr*100;

printf("(i) GENERALISED CONSTANTS OF LINE: \n");
printf("    A = %.3f+j(%.6f) \n", real(a), imag(a));
printf("    B = %.2f+j(%.2f) \n", real(b), imag(b));
printf("    C = %.6f+j(%.4f) \n", real(c), imag(c));
printf("    D = %.3f+j(%.6f) \n\n", real(d), imag(d));

printf("(ii) SENDING END VOLTAGE: \n");
printf("     Recieving end voltage per phase = %.0f kV \n\n", vr);
printf("     Recieving end current = %.0f A \n\n", ir);
printf("     Recieving end current phasor = %.2f+j(%.2f) \n\n", real(ir_p), imag(ir_p));
printf("     Sending end voltage per phase = %.2f+j(%.2f) V \n\n", real(vs), imag(vs));
printf("     Magnitude of Sending end voltage = %.2f kV \n\n", mag_vs);
printf("     Line value = %.2f kV \n\n", ll);

printf("(iii) REGULATION: \n");
printf("      %% regulation = %.2f %% \n\n", reg);



