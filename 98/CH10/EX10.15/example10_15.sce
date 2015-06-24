//Chapter 10
//Example 10_15
//Page 254

clear;clc;

ll=200;
r=0.16;
xl=0.25;
y=1.5*1e-6;
pd=20*1e6;
pfr=0.8;
v_r=110*1e3;

tr=r*ll;
ty=y*ll;
txl=xl*ll;

z=tr+%i*txl;
vr=v_r/sqrt(3);
ir=pd/sqrt(3)/v_r/pfr;

vs=vr*cosh(ty*z)+ir*sqrt(z/ty)*sinh(z*ty);
is=vr*sqrt(ty/z)*sinh(ty*z)+ir*cosh(ty*z);

printf("Recieving end voltage per phase = %.0f V \n\n", vr);
printf("Recieving end current = %.0f A \n\n", ir);
printf("Sending end voltage = %.2f+j%.2f = %.2f kV \n\n", real(vs), imag(vs), abs(vs)*sqrt(3)/1000);
printf("Sending end current = %.2f+j%.2f = %.2f A \n\n", real(is), imag(is), abs(is));
