//Chapter 10
//Example 10_17
//Page 259

clear;clc;

v_r=132*1e3;
pd=50*1e6;
pfr=0.8;
a=0.9497+%i*0.02321;
d=a;
b=19.9595+%i*93.90216;
c=%i*0.0015;

vr=v_r/sqrt(3);
ir=pd/sqrt(3)/v_r/pfr;
printf("Recieving end voltage per phase = %.0f V \n\n", vr);
printf("Recieving end current = %.0f A \n\n", ir);
printf("Recieving end voltage phasor = %.0f+j0 V \n\n", vr);
ir_p=ir*(pfr-%i*sin(acos(pfr)));
printf("Load current phasor = %.2f+j(%.2f) \n\n", real(ir_p), imag(ir_p));

vs=a*vr+b*ir_p;
mag_vs=abs(vs);
printf("Sending end voltage per phase = %.2f+j(%.2f) V \n\n", real(vs), imag(vs));

is=c*vr+d*ir_p;
mag_is=abs(is);
printf("Sending end current = %.2f+j(%.2f) = %.2f A \n\n", real(is), imag(is), abs(is));

ic=is-ir_p;
printf("Charging current = %.2f+j(%.2f) \n\n", real(ic), imag(ic));

reg=(abs(vs)/a-vr)/vr*100;
printf("%% regulation = %.2f %% \n\n", reg);




