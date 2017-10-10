// Example 13.13
// Calculating a Complex Response
L=0.5;
R=5;
C=1/40;
s=%s;
v_s1=20; //t<0
v_s2=-20; // t>=0
// from figure 13.14(a), for t<0
i_L_bef=v_s1/R;
v_C_bef=20;
// Laplace transform of the input signal for t>=0
V_s=-20/s;

// Inspection of figure 13.13(b) yields the systematic node equation
// (s/40+1/5+1/(0.5*s))*V_C_s=(2-20/s)/(0.5*s)+0.5
num=20*(s^2+8*s-80);
den=(s*(s^2+8*s+80));
V_C_s=num/den; // Voltage across capacitor 
pfe=pfss(V_C_s); // Partial fraction expansion
t=0:0.001:10
// inverse Laplace tranform of pfe(1)
v_C1=-20;
// inverse Laplace transform of pfe(2)
v_C2=20*sqrt(5)*exp(-4*t).*cos(8*t-(%pi/180)*(26.6));
v_C=v_C1+v_C2; // t>0
plot(t,v_C)
xlabel('t')
ylabel('v_C(t)')
title("Capacitor Voltage Waveform")
