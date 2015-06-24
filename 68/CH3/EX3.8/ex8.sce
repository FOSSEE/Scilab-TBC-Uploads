// Example 3.8 : line regulation load regulation

V_Z=6.8; // (V)
I_Z=0.005; // (A)
r_Z=20; // (ohm)
V=10; // V=V_+
R=0.5*10^3; // (ohm)

// 3.8a
V_ZO=V_Z-r_Z*I_Z;
I_Z=(V-V_ZO)/(R+r_Z)
V_O=V_ZO+I_Z*r_Z;
disp(V_O,"V_O (V)")

// 3.8b
deltaV=1; // change in V is +1 and -1
deltaV_O=deltaV*r_Z/(R+r_Z); // corresponding change in output voltage
disp(deltaV_O,"Line regulation (V/V)")

// 3.8c
I_L=1*10^-3; // load current
deltaI_L=1*10^-3;
deltaI_Z=-1*10^-3; // change in zener current
deltaV_O=r_Z*deltaI_Z;
disp(deltaV_O,"Load regulation (V/A)")

// 3.8d
I_L=6.8/2000; // load current with load resistance of 2000
deltaI_Z=-I_L;
deltaV_O=r_Z*deltaI_Z;
disp(deltaV_O,"Corresponding change in zener voltage (V) for zener current change of -3.4mA")

// 3.8e
R_L=0.5*10^3; // (ohm)
V_O=V*R_L/(R+R_L);
disp(V_O,"V_O (V) for R_L=0.5K ohm")

// 3.8f
I_Z=0.2*10^-3; // Zener t be at the edge of breakdown I_Z=I_ZK
V_Z=6.7; // V_Z=V_ZK
I_Lmin=(9-6.7)/0.5; // Lowest current supplied to R
I_L=I_Lmin-I_Z; // load current
R_L=V_Z/I_L;
disp(R_L,"R_L (ohm)")