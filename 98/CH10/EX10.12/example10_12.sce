//Chapter 10
//Example 10_12
//Page 245

clear;clc;

f=50;
ll=100;
pd=20*1e6;
pfr=0.9;
v_r=110*1e3;
r=0.2;
xl=0.4;
y=2.5*1e-6;

tr=r*ll;
txl=ll*xl;
ty=ll*y;

vr=v_r/sqrt(3);
ir=pd/sqrt(3)/v_r/pfr;
z=tr+%i*txl;
ir_p=ir*(pfr-%i*sin(acos(pfr)));
v1=vr+ir_p*z/2;
ic=%i*ty*v1;
is=ir_p+ic;
vs=v1+is*z/2;
lv=abs(vs)*sqrt(3);
loss=3*is^2*tr/2+3*ir^2*tr/2;
n=(pd)/(pd+loss);

printf("Total resistance per phase = %.2f ohm \n\n", tr);
printf("Total reactance per phase = %.2f ohm \n\n", txl);
printf("Total susceptance per phase = %.5f ohm \n\n", ty);
printf("Phase impedance = %.2f+j(%.2f) \n\n", real(z), imag(z));
printf("Recieving end voltage = %.0f V \n\n", vr);
printf("Load current = %.2f A \n\n", ir);
printf("Impedance per phase = %.2f+j(%.2f) \n\n", real(z), imag(z));

printf("Receiving end voltage is the reference phasor = %.2f+j0 \n\n", vr);
printf("Load current = %.2f+j(%.2f) \n\n", real(ir_p), imag(ir_p));
printf("Voltage across C = %.2f+j(%.2f) \n\n", real(v1), imag(v1));
printf("Charging current = %.2f+j(%.2f) \n\n", real(ic), imag(ic));
printf("Sending end current = %.2f+j(%.2f) \n\n", real(is), imag(is));
printf("Sending end current magnitude = %.2f A \n\n", abs(is));
printf("Sending end voltage = %.2f+j(%.2f) \n\n", real(vs), imag(vs));
printf("Sending end voltage magnitude = %.2f V \n\n", abs(vs));
printf("Line value of sending end voltage = %.2f V \n\n", lv/1000);
printf("Total line losses for three phases = %.3f MW \n\n", loss/1e6);
printf("Transmission efficiency = %.2f %% \n\n", n*100);

