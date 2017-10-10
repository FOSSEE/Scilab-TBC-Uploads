// Example 14.4
// Y parameter by the indirect method
// from figure 14.15(a) let us assume values for R's and C for illustration
R=50;
G=1/R;
C=0.1*10^-6;
s=%s;

// From figure 14.15(b),Applying KCL at both the nodes we get,
disp("I_1=V_1/R+(V_1-V_2)/(1/(s*C))")
disp("=>I_1=(G+s*C)*V_1-s*C*V_2 -----equation(1)")
disp("I_2=V_2/R+(V_2-V_1)/(1/(s*C))")
disp("=>I_2=-s*C*V_1+(G+s*C)*V_2-----equation(2)")

// Comapring above equations with these equations,
// I_1=y_11*V_1+y_12*V_2
// I_2=y_21*V_1+y_22*V_2

// On comparison we get
y_11=G+s*C;
y_22=y_11;
y_12=-s*C;
y_21=y_12;
Y=[y_11,y_12;y_21,y_22];
disp(Y,"Required Y Parameters=")
