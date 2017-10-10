// Example 14.5
// Y Parameters by the Direct Method
R=10;
C=1/40;
s=%s;
// From figure 14.16(b) ,V_2=0;
disp("I_1=(s*C)*V_1---equation(1)")
disp("I_2=2(s*C)*V_1--equation(2)")
// From equation 1 & 2 we get
y_11=s*C;
y_21=2*s*C;

// From figure 14.16(c),V_1=0;
disp("I_1=-(s*C)*V_2---equation(3)")
disp("I_2=3*I_1-I_1+V_2/10---equation(4)")
// From equation 3 & 4 we get
y_12=-s*C;
y_22=(2-s)/20;
Y=[y_11,y_12;y_21,y_22];
disp(Y,"Required Y parameter=")
