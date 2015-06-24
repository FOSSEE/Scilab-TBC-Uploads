//CHAPTER 4- MEASURING INSTRUMENTS
//Example 1

disp("CHAPTER 4");
disp("EXAMPLE 1");

//VARIABLE INITIALIZATION
N=10;          //number of turns
I=5;           //in amperes
B=500;         //flux density in Wb/m^2
ar=15/10000;   //area in m^2

//SOLUTION
T_d=N*B*I*ar;
disp(sprintf("The deflecting torque exerted on the coil is %.3f N-m",T_d));

//END



