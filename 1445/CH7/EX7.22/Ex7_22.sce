//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 22

clc;
disp("CHAPTER 7");
disp("EXAMPLE 22");

//6600/400 V single phase transformer
//VARIABLE INITIALIZATION 
v1=6600;                             //primary voltage in Volts
v2=400;                             //secondary voltage in Volts
R1=2.5;                             //primary resistance
R2=0.01;                            //secondary resistance

//SOLUTION 
//while finding equivalent resistance referrd to primary
//transfer R2 resistance to  R'2
R_dash_2=R2*(v1/v2)^2;
R_e1=R1+R_dash_2;
//
//to find total equivalent resistance referred to secondary
//first calculate R'1
R_dash_1=R1*(v2/v1)^2;
R_e2=R2+R_dash_1;
//
disp(sprintf("The total equivalent resistance referred to primary is %.6f Ω",R_e1));
disp(sprintf("The total equivalent resistance referred to secondary is %.6f Ω",R_e2));
disp(" "); 
// 
//END
