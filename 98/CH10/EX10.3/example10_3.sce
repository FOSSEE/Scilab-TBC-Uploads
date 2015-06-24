//Chapter 10
//Example 10_3
//Page 235

clear;clc;

load_kw=5000;
v_r=22;
pfr=0.8;
r=4;
xl=6;

vr=22*1000/sqrt(3);
z=r+%i*xl;
i=load_kw*1000/3/vr/pfr;
vr_phasor=vr+%i*0;
i_phasor=i*(pfr-%i*sin(acos(pfr)));
vs_phasor=vr_phasor+i_phasor*z;
vs=abs(vs_phasor);
lv=vs*sqrt(3);
reg=(vs-vr)/vr*100;
loss=3*i^2*r;
n=load_kw/(load_kw+loss/1000);

printf("Impedance per phase = %.0f+j(%.0f) \n\n", real(z), imag(z));
printf("Line current = %.2f A \n\n", i);
printf("             = %.2f+j(%.2f) \n\n", real(i_phasor), imag(i_phasor));
printf("(i) Sending end voltage phasor =%.2f+j(%.2f) \n\n", real(vs_phasor), imag(vs_phasor));
printf("    Magnitude of Vs = %.2f V \n\n", vs);
printf("    Line value of Vs = %.2f kV \n\n", lv/1000);
printf("(ii) Percentage regulation = %.3f %% \n\n", reg);
printf("(iii) Line losses = %.3f kW \n\n", loss/1000);
printf("      Transmission efficiency = %.2f %% \n\n", n*100);

