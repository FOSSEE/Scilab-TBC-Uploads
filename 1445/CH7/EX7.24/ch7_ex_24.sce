//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 24

disp("CHAPTER 7");
disp("EXAMPLE 24");

//VARIABLE INITIALIZATION 
va=10000;
v1=2500;                             //primary voltage in Volts
v2=250;                              //secondary voltage in Volts
R1=4.8;
X1=11.2;
R2=0.048;
X2=0.112; 

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
//leakage impedence
z0=R_e2+X_e2*%i;
//applied load
Zl=5+3.5*%i;
//total impedence in series
Z=z0+Zl;
magZ=sqrt(real(Z)^2+imag(Z)^2);
magZl=sqrt(real(Zl)^2+imag(Zl)^2);
I2=v2/magZ;
V2=I2*magZl
disp("SOLUTION (a)");
disp(sprintf("The secondary terminal voltage is %f V",V2)); 
//
//part (b) of the problem cannot be solved mathematically alone.
disp(" "); 
// 
//END
