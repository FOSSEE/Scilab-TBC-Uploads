//Chapter 10
//Example 10_5
//Page 236

clear;clc;

kw=3600;
pf=0.8;
vs=33;
r=5.31;
x=5.54;

//Sending end voltage per phase
vsp=vs*1000/sqrt(3);
printf("Sending end voltage per- phase = %d V \n", vsp);
//line current
il=kw/3*1000/pf;
printf("Line current = %d*10^5/Vr \n", il/10^5);
//using approximate expression,
vr=18435;
printf("(i) Vr = %d V \n", vr);
lv=sqrt(3)*vr/1000;
printf("    Line voltage at recieving end = %.2f kV \n\n", lv);
//line current 
lc=il/vr;
printf("(ii) Line current = %.2f A \n\n", lc);
loss=3*lc^2*r;
eff=kw/(kw+loss/1000);
printf("(iii) Line losses = %.3f kW \n", loss/1000);
printf("      Transmission efficiency = %.2f %% \n\n", eff*100)

