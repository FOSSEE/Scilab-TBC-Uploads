//example:-5.3,page no.-220.
// program to find the z parameter of the two port network.
syms Z11 Z12 Z22 Z21 V1 I1 V2 I2 Za Zb Zc;
Z11=Za+Zc;  // for I2=0.
Z12=(Zc/(Zb+Zc))*(Zb+Zc);  //for I1=0.
Z21=(Zc/(Za+Zc))*(Za+Zc);  // for I2=0.
Z22=Zb+Zc;   //for I1=0.
Z=[Z11 Z12;Z21 Z22];  // z-parameter matrix.
disp(Z,'Z-parameter of two port network = ')