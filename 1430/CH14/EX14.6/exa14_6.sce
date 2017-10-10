//Examples 14.6
//Calculating h parameter
// From figure 14.18(a)
R=10;
C=1/40;
s=%s;
// for calculating h-parameter ,with V_2=0;
disp("V_1=(1/(s*C))*I_1---equation(1)")
disp("I_2=3*I_1-I_1--- equation(2)")
//From equation 1 & 2
h_11=1/(s*C);
h_21=2;

// Now I_1=0;
disp("V_1=V_2---equation(3)")
disp("V_2=R*I_2---equation(4)")
// form equation(3)& (4)
h_12=1; h_22=0.1;
H=[h_11,h_12;h_21,h_22];
disp(H,"Required H-Parameter=")
