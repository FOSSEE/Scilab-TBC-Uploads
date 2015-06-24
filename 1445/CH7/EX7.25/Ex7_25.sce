//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 25

disp("CHAPTER 7");
disp("EXAMPLE 25");

//15kVA 2200/110 V transformer
//VARIABLE INITIALIZATION 
va=25000;                             //power rating
v1=2200;                             //primary voltage in Volts
v2=110;                              //secondary voltage in Volts
f=50;
R1=1.75;
X1=2.6;
R2=0.0045;
X2=0.0075; 

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
//
disp("SOLUTION (a)");
disp(sprintf("The equivalent resistance referred to primary %.2f Ω",R_e1));
disp("SOLUTION (b)");
disp(sprintf("The equivalent resistance referred to secondaryy %.5f Ω",R_e2));
disp("SOLUTION (c)");
disp(sprintf("The equivalent leakage reactance referred to primary %.1f Ω",X_e1));
disp("SOLUTION (d)");
disp(sprintf("The equivalent leakage reactance referred to secondary %.3f Ω",X_e2));
disp("SOLUTION (e)");
disp(sprintf("The equivalent impedance referred to primary %.5f Ω",magZ_e1));
disp("SOLUTION (f)");
disp(sprintf("The equivalent impedance referred to secondary %.5f Ω",magZ_e2));
//
//primary and secondary full load current and voltage relationship with power rating
I1=va/v1;           //primary current
I2=va/v2;           //secondary current
cuLoss=I2^2*R_e2;   //copper loss     or also as I1^2.R1 + I2^2.R2
disp("SOLUTION (d)");
disp(sprintf("The copper loss at full load %f W",cuLoss)); 
disp(" "); 
// 
//END
