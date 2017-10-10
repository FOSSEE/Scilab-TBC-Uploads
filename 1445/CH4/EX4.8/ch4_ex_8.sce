//CHAPTER 4- MEASURING INSTRUMENTS
//Example 8

disp("CHAPTER 4");
disp("EXAMPLE 8");

//VARIABLE INITIALIZATION
I_m=15/1000;         //from mA to A
r_m=5;               //in Ohms
I=2;                 //in Amperes
v=30;                //in Volts

//SOLUTION
R_sh=(I_m*r_m)/I;    //I_m=I*(R_sh/(R_sh+r_m)) if R_sh<<5Ω, then I_m=I*(R_sh/r_m) neglecting R_sh in the denominator
disp(sprintf("In order to read upto 2A, a shunt of %f Ω has to be connected in parallel",R_sh));

R_se=(v-(I_m*r_m))/I_m;
disp(sprintf("In order to read upto 30V, a resistance of %f Ω has to be connected in series",R_se));

//END


