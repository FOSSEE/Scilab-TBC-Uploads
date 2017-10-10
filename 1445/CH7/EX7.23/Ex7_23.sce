//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 23

clc;
disp("CHAPTER 7");
disp("EXAMPLE 23");

//33kVA 2200/220 V 50Hz single phase transformer
//VARIABLE INITIALIZATION 
va=33000;
v1=2200;                             //primary voltage in Volts
v2=220;                              //secondary voltage in Volts
f=50;                               // frequency in Hz
R1=2.4;                             //primary winding (High Voltage side) resistance
X1=6;                               //primary winding (High Voltage side)leakage reactance
R2=0.03;                            //secondary winding (Low Voltage side) resistance
X2=0.07;                            //secondary winding (Low Voltage side)leakage reactance

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

disp("SOLUTION (a)");
disp(sprintf("The primary resistance referred to secondary %.2f Ω",R_dash_1));
disp(sprintf("The primary leakage reactance referred to secondary %.2f Ω",X_dash_1));
//
disp("SOLUTION (b)");
disp(sprintf("The secondary resistance referred to secondary %.2f Ω",R_dash_2));
disp(sprintf("The secondary leakage reactance referred to secondary %.2f Ω",X_dash_2));
//
disp("SOLUTION (C(i))");
disp(sprintf("The equivalent resistance referred to primary %.2f Ω",R_e1));
disp(sprintf("The equivalent leakage reactance referred to primary %.2f Ω",X_e1));
//
disp("SOLUTION (C(ii))");
disp(sprintf("The equivalent resistance referred to secondaryy %.2f Ω",R_e2));
disp(sprintf("The equivalent leakage reactance referred to secondary %.2f Ω",X_e2));
//
//Ohmic load
I1=va/v1;                   // primary full load current
I2=va/v2;                   // secondary full load current
oLoss=I2^2*R_e2;            //ohmic loss
disp("SOLUTION (d)");
disp(sprintf("The ohmic loss at full load %.0f W",oLoss));
//
//Voltage to be applied on the HV side
//to obtain short circuit currnet of 160 A in L.V side winding
Z_e1=sqrt(R_e1^2+X_e1^2);               // equivalent leakage impedance
//voltage to be applied on HV side is equivalent leakage reactance x primary current
//relationship between current and voltage in transformer 
//I1/I2=V2/V1
//Given V2=220 V, V1=2200 V, I2=160 Amp
//Therefore, I1=I2.(V2/V1)
I1=160*(v2/v1);
V=I1*Z_e1;                      //160*(v2/v1)*Z_e1;
//Power Input 
P=(I1)^2*R_e1                  //P=I^2.R
disp("SOLUTION (e)");
disp(sprintf("The voltage to be applied on HV side is %.2f V",V));
disp(sprintf("The power input is %.1f W",P));
disp(" "); 
// 
//END
