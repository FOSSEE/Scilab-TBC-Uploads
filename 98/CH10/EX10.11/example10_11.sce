//Chapter 10
//Example 10_11
//Page 244

clear;clc;

r=0.1;
xl=0.2;
y=0.04*1e-4;
ll=100;
f=50;
pd=10000;
v_r=66000;
pfr=0.8;

tr=r*ll;
txl=ll*xl;
ty=ll*y;

vr=v_r/sqrt(3);
ir=pd*1000/sqrt(3)/v_r/pfr;
z=tr+%i*txl;
ir_p=ir*(pfr-%i*sin(acos(pfr)));
v1=vr+ir_p*z/2;
ic=%i*ty*v1;
is=ir_p+ic;
vs=v1+is*z/2;
theta1=atan(imag(vs)/real(vs));
theta2=atan(imag(is)/real(is));
thetas=theta1+abs(theta2);
pfs=cos(thetas);
ps=3*abs(vs)*abs(is)*pfs/1000;
n=pd/ps;

printf("Total resistance per phase = %.2f ohm \n\n", tr);
printf("Total reactance per phase = %.2f ohm \n\n", txl);
printf("Total susceptance per phase = %.5f ohm \n\n", ty);

printf("Recieving end voltage = %.0f V \n\n", vr);
printf("Load current = %.2f A \n\n", ir);
printf("Impedance per phase = %.2f+j%.2f \n\n", real(z), imag(z));

printf("Receiving end voltage is the reference phasor = %.2f+j0 \n\n", vr);
printf("Load current = %.2f+j%.2f \n\n", real(ir_p), imag(ir_p));
printf("Voltage across C = %.2f+j%.2f \n\n", real(v1), imag(v1));
printf("Charging current = %.2f+j%.2f \n\n", real(ic), imag(ic));
printf("Sending end current = %.2f+j%.2f \n\n", real(is), imag(is));
printf("Sending end current magnitude = %.2f A \n\n", abs(is));
printf("Sending end voltage = %.2f+j%.2f \n\n", real(vs), imag(vs));
printf("Sending end voltage magnitude = %.2f V \n\n", abs(vs)*sqrt(3)/1000);
printf("Phase angle between Vr and Vs = %.2f degrees \n\n", theta1*180/%pi);
printf("Phase angle between Vr and Is = %.2f degrees \n\n", abs(theta2*180/%pi));
printf("Sending end power factor angle = %.2f degrees \n\n", thetas*180/%pi);
printf("Sending end power factor = %.2f \n\n", pfs);
printf("Sending end power = %.3f kW \n\n", ps);
printf("Power delivered = %.0f kW \n\n", pd);
printf("Transmission efficiency = %.2f %% \n\n", n*100);





