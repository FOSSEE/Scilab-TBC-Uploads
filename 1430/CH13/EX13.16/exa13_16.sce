// Example 13.16
// Impulsive Zero -State Response
C_1=1/20;
C_2=1/20;
R=5;
L=1;
s=%s;
Z_s=1/(s*C_1)+1/((s*C_2)+1/R+1/(s*L)); // Overall impedance of the circuit
V_s=80/s;
I_s=V_s/Z_s;
t=0:0.01:10
pfe=pfss(I_s);
// Taking inverse Laplace transfrom we get
// Inverse laplace transform of pfe(1) 
i_1=4.80*exp(-t).*cos(3*t-((%pi*33.7)/180));
//inverse laplace of pfe(2)
i_2=2;
i=i_1+i_2;
plot(t,i)
xlabel('t')
ylabel('i(t)')
title("Current waveform")
