// Example 14.9
// Calculating a Transfer Function
// From figure 14.21 and ABCD parameters that we found in example 14.7 we have,

// since V_1=V_s
// Z_s=0;
s=%s;
disp("H(s)=I_2/V_1")
disp("=> H(s)=-1/A*Z_L+B")
A=1-2/s;
B=-20/s;
Z_L=2.5*s// Assume
H_s=-1/(A*Z_L+B);
P_s=(s^2-2*s-8); // denominator of H_s
p=roots(P_s);
disp(H_s,"Transfer function=")
disp(P_s,"Characteristic polynomial=")
disp(p,"Poles of transfer function=")
