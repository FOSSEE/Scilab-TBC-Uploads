// Example 14.1
// From figure 14.7(a)
// Let us assume some Values to R's and C for illustration purpose
R=5;
C=0.1*10^-6;
s=%s;
// Conductance matrix from figure 14.7(b)
Y_11=s*C+1/R;
Y_12=-s*C;
Y_21=Y_12;
Y_22=Y_11;
Y=[Y_11,Y_12;Y_21,Y_22];
delta=det(Y);
// Solving matrix equation
// Y*[V_1;V_2]=[I_1;I_2]
// On application of Cramer's Rule we get
// V_1=(Y_22/delta)*I_1-(Y_12/delta)*I_2 ----equqtion(1)
//V_2=-(Y_21/delta)*I_1+(Y_11/delta)*I_2 ----equation(2)
// comparing above equations with z-parameter matrix equation
z_11=Y_11/delta;
z_22=z_11;
z_12=-Y_12/delta;
z_21=z_12;
Z=[z_11,z_12;z_21,z_22];
disp(Z,"Z-Parameters=")
