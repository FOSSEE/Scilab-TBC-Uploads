//Chapter 10
//Example 10_10
//Page 241

clear;clc;

r=0.25;
xl=0.8;
y=14*1e-6;
vr=66000;
pd=15000;
pfr=0.8;
ll=100;

tr=ll*r;
txl=ll*xl;
ty=y*ll;

z=tr+%i*txl;
l=pd/vr/pfr;
i=pd*1000/vr/pfr;
vr_phasor=vr+%i*0;
ir_phasor=i*(pfr-%i*sin(acos(pfr)));
ic=%i*ty*vr;

is_phasor=ir_phasor+ic;
mag_is=abs(is_phasor);
vd=is_phasor*z;
vs_phasor=vr_phasor+is_phasor*z;
mag_vs=abs(vs_phasor);
reg=(mag_vs-vr)/vr*100;
theta1=atan(-imag(is_phasor)/real(is_phasor));
theta2=atan(imag(vs_phasor)/real(vs_phasor));
thetas=abs(theta1)+theta2;
pfs=cos(thetas);

printf("Total resistance = %.0f ohm \n\n", tr);
printf("Total reactance = %.0f ohm \n\n", txl);
printf("Total susceptance = %.0f ohm \n\n", ty);
printf("Recieving end voltage = %.0f V \n\n", vr);
printf("Load current = %.0f A \n\n", i);
printf("Vr phasor = %.2f+j%.2f \n\n", real(vr_phasor), imag(vr_phasor));
printf("Load current phasor = %.2f+j%.2f \n\n", real(ir_phasor), imag(ir_phasor));
printf("Capacitive current = j%.2f \n\n", imag(ic));
printf("(i) Sending end current = %.2f+j%.2f \n", real(is_phasor), imag(is_phasor));
printf("    Magnitude = %.0f V \n\n", mag_is);
printf("(ii) Voltage drop = %.2f+j%.2f \n", real(vd), imag(vd))
printf("     Sending end voltage = %.2f+j%.2f \n", real(vs_phasor), imag(vs_phasor));
printf("     Magnitude of Vs = %.0f V \n\n", mag_vs);
printf("(iii) %% Regulation = %.2f %% \n\n", reg);
printf("(iv) Phase angle between Vr and Ir = %.2f degrees \n\n", theta1*180/%pi);
printf("     Phase angle between Vr and Vs = %.2f degrees \n\n", theta2*180/%pi);
printf("     Supply power factor angle = %.2f degrees \n\n", thetas*180/%pi);
printf("     Supply power factor = %.2f lag \n\n", pfs);






