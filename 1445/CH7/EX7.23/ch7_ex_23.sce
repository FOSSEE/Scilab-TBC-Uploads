//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 23

disp("CHAPTER 7");
disp("EXAMPLE 23");

//VARIABLE INITIALIZATION 
va=33000;
v1=2200;                             //primary voltage in Volts
v2=220;                              //secondary voltage in Volts
f=50;
R1=2.4;
X1=6;
R2=0.03;
X2=0.07; 

//SOLUTION 
// 
R_dash_2=R2*(v1/v2)^2;
R_e1=R1+R_dash_2;
X_dash_2=X2*(v1/v2)^2;
X_e1=X1+X_dash_2;
//
R_dash_1=R1*(v2/v1)^2;
R_e2=R2+R_dash_1;
X_dash_1=X1*(v2/v1)^2;
X_e2=X2+X_dash_1;

disp("SOLUTION (a)");
disp(sprintf("The primary resistance referred to secondary %f Ω",R_dash_1));
disp(sprintf("The primary leakage reactance referred to secondary %f Ω",X_dash_1));
//
disp("SOLUTION (b)");
disp(sprintf("The secondary resistance referred to secondary %f Ω",R_dash_2));
disp(sprintf("The secondary leakage reactance referred to secondary %f Ω",X_dash_2));
//
disp("SOLUTION (C(i))");
disp(sprintf("The equivalent resistance referred to primary %f Ω",R_e1));
disp(sprintf("The equivalent leakage reactance referred to primary %f Ω",X_e1));
//
disp("SOLUTION (C(ii))");
disp(sprintf("The equivalent resistance referred to secondaryy %f Ω",R_e2));
disp(sprintf("The equivalent leakage reactance referred to secondary %f Ω",X_e2));
//
I1=va/v1;
I2=va/v2;
oLoss=I2^2*R_e2;
disp("SOLUTION (d)");
disp(sprintf("The ohmic loss at full load %f W",oLoss));
//
Z_e1=sqrt(R_e1^2+X_e1^2);
//voltage to be applied on HV side
V=160*(v2/v1)*Z_e1;
P=(160*(v2/v1))^2*R_e1;
disp("SOLUTION (e)");
disp(sprintf("The voltage to be applied on HV side is %f V",V));
disp(sprintf("The power input is %f W",P));
disp(" "); 
// 
//END
