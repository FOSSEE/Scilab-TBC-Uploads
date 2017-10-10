//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 21

clc;
disp("CHAPTER 7");
disp("EXAMPLE 21");

//250/125 V 5kVA single phase transformer
//VARIABLE INITIALIZATION
va=5000;                            //apparent power
v1=250;                             //primary voltage in Volts
v2=125;                             //secondary voltage in Volts
R1=0.2;                             //resistance of primary
X1=0.75;                            //leakage reactance of primary
R2=0.05;                            //resistance of secondary
X2=0.2;                             //leakage reactance of secondary
pf=0.8;                             //power factor (leading)

//SOLUTION  
R_e2=(v2/v1)^2*R1+R2;
X_e2=(v2/v1)^2*X1+X2;
I1=va/v1;
I2=va/v2;
//
//at full load leading
phi=acos(pf);
%reg=(I2*R_e2*pf-I2*X_e2*sin(phi))*100/v2; 
disp("SOLUTION (i)");
disp(sprintf("The percent regulation at full load is %.2f",%reg));
//
//%R=(E2-V2).100/E2
V2=v2-%reg*v2/100;
disp("SOLUTION (ii)");
disp(sprintf("The secondary terminal voltage at full load is %.2f V",V2));
disp(" "); 
// 
//END
