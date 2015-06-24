//Chapter 10
//Example 10_18
//Page 260

clear;clc;

v_r=110*1e3;
pd=50*1e6;
pfr=0.8;
a=0.97865+%i*0.051289;
d=a;
b=28.47009+%i*106.25184;
c=0.00008682+%i*0.0004924;

vr=v_r/sqrt(3);
ir=pd/sqrt(3)/v_r;
printf("Recieving end voltage per phase = %.0f V \n\n", vr);
printf("Recieving end current = %.0f A \n\n", ir);
printf("Recieving end voltage phasor = %.0f+j0 V \n\n", vr);
ir_p=ir*(pfr-%i*sin(acos(pfr)));
printf("Load current phasor = %.2f+j(%.2f) \n\n", real(ir_p), imag(ir_p));

vs=a*vr+b*ir_p;
mag_vs=abs(vs);
printf("(i) Sending end voltage per phase = %.2f+j(%.2f) V \n", real(vs), imag(vs));
printf("    Magnitude of Sending end voltage = %.2f kV \n\n", mag_vs);

is=c*vr+d*ir_p;
mag_is=abs(is);
printf("(ii) Sending end current = %.2f+j(%.2f) = %.2f A \n", real(is), imag(is), abs(is));
printf("     Magnitude of Sending end current = %.2f kV \n\n", mag_is);

t1=atan(imag(is)/real(is))*180/%pi;
t2=atan(imag(vs)/real(vs))*180/%pi;
pfs=cos((abs(t1)+t2)*%pi/180);
ps=3*mag_vs*mag_is*pfs/1e6;
printf("(iii) Sending end power = %.2f MW \n\n", ps);

pr=pd*pfr/1e6;
printf("(iv) Recieving end power = %.2f MW \n\n", pr);
printf("     Transmission efficiency = %.2f %% \n\n", pr/ps*100);




