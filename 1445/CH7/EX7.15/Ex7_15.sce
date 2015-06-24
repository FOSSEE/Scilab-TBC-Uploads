//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 15

disp("CHAPTER 7");
disp("EXAMPLE 15");
//20kVA single phase transformer
//VARIABLE INITIALIZATION
va=20000;                        //apparent power
v1=2000;                         //primary voltage in Volts
v2=200;                          //secondary voltage in Volts
R1=2.5;                          //in Ohms
R2=0.04;                         //in Ohms
X1=8;                            //in Ohms
X2=0.07;                         //in Ohms 
pf2=0.8;

//SOLUTION
//N1b/N2=v1/v2;
I2=va/v2;
phi2=acos(pf2);
//
R_dash_1=R1*((v2/v1)^2);
X_dash_1=X1*((v2/v1)^2);
//
R_e2=R_dash_1+R2;
X_e2=X_dash_1+X2;
//disp(sprintf("The total resistance referred to secondary is %f Ω",R_e2));
//disp(sprintf("The total reactance referred to secondary is %f Ω",X_e2));
//
//R=ercosphi2+vx.sinphi2
//E2=V2+I2.R
V2=v2-(I2*R_e2*pf2+I2*X_e2*sin(phi2));
%reg=(v2-V2)*100/v2;
disp(sprintf("The secondary terminal voltage is %.2f V",V2));
disp(sprintf("The percent regulation at full load is %.2f",%reg));
disp(" "); 
// 
//END
