//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 32

disp("CHAPTER 7");
disp("EXAMPLE 32");

//VARIABLE INITIALIZATION 
va=50000;
v1=4400;                             //primary voltage in Volts
v2=220;                              //secondary voltage in Volts
f=50;
R1=3.45;
X1=5.2;
R2=0.0009;
X2=0.015; 

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
//
Z_e1=R_e1+X_e1*%i;
Z_e2=R_e2+X_e2*%i;
magZ_e1=sqrt(real(Z_e1)^2+imag(Z_e1)^2);
magZ_e2=sqrt(real(Z_e2)^2+imag(Z_e2)^2);
//
disp("SOLUTION (i)");
disp(sprintf("The equivalent resistance referred to primary %f Ω",R_e1));
disp("SOLUTION (ii)");
disp(sprintf("The equivalent resistance referred to secondaryy %f Ω",R_e2));
disp("SOLUTION (iii)");
disp(sprintf("The equivalent leakage reactance referred to primary %f Ω",X_e1)); 
disp(sprintf("The equivalent leakage reactance referred to secondary %f Ω",X_e2));
disp("SOLUTION (iv)");
disp(sprintf("The equivalent impedance referred to primary %f Ω",magZ_e1)); 
disp(sprintf("The equivalent impedance referred to secondary %f Ω",magZ_e2));
//
I1=va/v1;
I2=va/v2;
Pcu=I2^2*R_e2;
disp("SOLUTION (d)");
disp(sprintf("The copper loss at full load %f W",Pcu)); 
disp(" "); 
//The answers in the book on page 7.77 are wrong for all but Xe1 and Xe2 values.
//END
