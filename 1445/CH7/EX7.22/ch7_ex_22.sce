//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 22

disp("CHAPTER 7");
disp("EXAMPLE 22");

//VARIABLE INITIALIZATION 
v1=6600;                             //primary voltage in Volts
v2=400;                             //secondary voltage in Volts
R1=2.5;
R2=0.01;
X2=0.2;
pf=0.8;                             //leading

//SOLUTION 
//transfer R2 resistance to  R'2
R_dash_2=R2*(v1/v2)^2;
R_e1=R1+R_dash_2;
//
R_dash_1=R1*(v2/v1)^2;
R_e2=R2+R_dash_1;
//
disp(sprintf("The total equivalent resistance referred to primary is %f Ω",R_e1));
disp(sprintf("The total equivalent resistance referred to secondary is %f Ω",R_e2));
disp(" "); 
// 
//END
