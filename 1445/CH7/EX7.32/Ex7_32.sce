//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 32

clc;
disp("CHAPTER 7");
disp("EXAMPLE 32");

//50 kVA 4400/220 V single phase transformer
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
//Primary resistance and leakage reactance referred to secondary
//R'1 & X'1
//Secondary resistance and leakage reactance referred to primary
//R'2 & X'2
//Equivalent resistance & leakage reactance referred to primary
//Re1 & Xe1
//Equivalent resistance & leakage reactance referred to secondary
//Re2 & Xe2
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
disp(sprintf("The equivalent resistance referred to primary %.4f Ω",R_e1));//text book answer is 7.05 ohm
disp("SOLUTION (ii)");
disp(sprintf("The equivalent resistance referred to secondaryy %.4f Ω",R_e2));
disp("SOLUTION (iii)");
disp(sprintf("The equivalent leakage reactance referred to primary %.4f Ω",X_e1)); 
disp(sprintf("The equivalent leakage reactance referred to secondary %.4f Ω",X_e2));
disp("SOLUTION (iv)");
disp(sprintf("The equivalent impedance referred to primary %.4f Ω",magZ_e1)); // text book answer is 13.23 ohm
disp(sprintf("The equivalent impedance referred to secondary %.4f Ω",magZ_e2));//text book answer is 0.0331 ohm
//
I1=va/v1;
I2=va/v2;
Pcu=I2^2*R_e2;
disp("SOLUTION (d)");
disp(sprintf("The copper loss at full load %.0f W",Pcu)); 
disp(" "); 
//The answers in the book on page 7.77 are wrong for all but Xe1 and Xe2 values.
//END
