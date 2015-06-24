//CHAPTER 4- MEASURING INSTRUMENTS
//Example 4

disp("CHAPTER 4");
disp("EXAMPLE 4");

//VARIABLE INITIALIZATION
r_A=10;                      //in Ohms
I_A=15/1000;                 //from mA to A
I=100;                       //in A
V=500;                       //in Volts

//SOLUTION

//solution (a)
R_sh=r_A/((I/I_A)-1);        //(I/I_A) is the multiplying factor of the shunt

disp(sprintf("The required shunt resistance is %.2f Ω",R_sh));

//solutuion (b)
r=V/I_A;                     //total resistance required                  
R_se=r-r_A;
disp(sprintf("The required resistance to be added in series is %.3f Ω",R_se));

//END



