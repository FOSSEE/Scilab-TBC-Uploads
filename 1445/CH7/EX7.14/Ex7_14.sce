//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 14

disp("CHAPTER 7");
disp("EXAMPLE 14");

//1100/110 V 22 kVA single phase transformer
//VARIABLE INITIALIZATION
va=22000;                       //apparent power
v1=1100;                        //primary voltage in Volts
v2=110;                         //secondary voltage in Volts
R1=2;                           //in Ohms
R2=0.02;                        //in Ohms
X1=5;                           //in Ohms
X2=0.045;                       //in Ohms 

//SOLUTION
//N1/N2=v1/v2;

R_dash_2=R2*((v1/v2)^2);
X_dash_2=X2*((v1/v2)^2);
disp("SOLUTION (a)");
disp(sprintf("The equivalent resistance of secondary referred to primary is %.1fΩ",R_dash_2));
disp(sprintf("The equivalent reactance of secondary referred to primary is %.1f Ω",X_dash_2));
//
R_e1=R_dash_2+R1;
X_e1=X_dash_2+X1;
disp("SOLUTION (b)");
disp(sprintf("The total resistance referred to primary is %.1f Ω",R_e1));
disp(sprintf("The total reactance referred to primary is %.1f Ω",X_e1));
//
R_dash_1=R1*((v2/v1)^2);
X_dash_1=X1*((v2/v1)^2);
disp("SOLUTION (c)");
disp(sprintf("The equivalent resistance of secondary referred to secondary is %.2f Ω",R_dash_1));
disp(sprintf("The equivalent reactance of secondary referred to secondary is %.2f Ω",X_dash_1));
//
R_e2=R_dash_1+R2;
X_e2=X_dash_1+X2;
disp("SOLUTION (d)");
disp(sprintf("The total resistance referred to secondary is %.3f Ω",R_e2));
disp(sprintf("The total reactance referred to secondary is %.3f Ω",X_e2));
//
I1=va/v1;
I2=va/v2;
copperLoss=R1*I1^2+R2*I2^2;
disp("SOLUTION (e)");
disp(sprintf("The total copper loss is %4.0f W",copperLoss));
disp(" "); 
// 
//END
