//Chapter 10
//Example 10_14
//Page 248

clear;clc;

ll=100;
r=0.1;
xl=0.5;
y=10*1e-6;
pd=20*1e6;
pfr=0.9;
v_r=66*1e3;

tr=r*ll;
ty=y*ll;
txl=xl*ll;

z=tr+%i*txl;
vr=v_r/sqrt(3);
ir=pd/sqrt(3)/v_r/pfr;
ir_p=ir*(pfr-%i*sin(acos(pfr)));
ic1=vr*%i*ty/2;
il=ir_p+ic1;
vs=vr+il*z;
ic2=vs*%i*ty/2;
is=il+ic2;
theta1=atan(imag(vs)/real(vs));
theta2=atan(imag(is)/real(is));
thetas=theta1+abs(theta2);
pfs=cos(thetas);
reg=(abs(vs)-vr)/vr*100;
ps=3*abs(vs)*abs(is)*pfs;
n=pd/ps*100;

printf("Total resistance / phase = %.2f ohm \n\n",tr);
printf("Total reactance / phase = %.2f ohm \n\n",txl);
printf("Total susceptance / phase = %.6f S \n\n",ty);

printf("Recieving end voltage = %.0f V \n\n", vr);
printf("Load current = %.2f A \n\n", ir);
printf("Recieving end voltage phasor = %.0f+j0 \n\n", vr);
printf("Load current = %.2f+j(%.2f) \n\n", real(ir_p), imag(ir_p));
printf("Charging current at load end = j(%.2f) \n\n", imag(ic1));
printf("Line current = %.2f+j(%.2f) \n\n", real(il), imag(il));
printf("Sending end voltage = %.2f+j(%.2f) \n\n", real(vs), imag(vs));
printf("Line to line sending end voltage = %.2f kV \n\n", abs(vs)*sqrt(3)/1000);
printf("Charging current at sending end = %.2f+j(%.2f) \n\n", real(ic2),imag(ic2));
printf("Sending end current = %.2f+j(%.2f) A \n\n", real(is), imag(is));
printf("Sending end current = %.2f A \n\n", abs(is));

printf("(i) Angle between Vr and Vs = %.2f degrees \n\n", theta1*180/%pi);
printf("    Angle between Vr and Is = %.2f degrees \n\n", theta2*180/%pi);
printf("    Angle between Is and Vs = %.2f degrees \n\n", thetas*180/%pi);
printf("    Sending end power factor = %.2f \n\n", pfs);
printf("(ii) %% Voltage regulation = %.2f %% \n\n", reg);
printf("(iii) Sending end power = %.2f MW \n\n", ps/1e6);
printf("      Transmission efficiency = %.2f %% \n\n", n);

