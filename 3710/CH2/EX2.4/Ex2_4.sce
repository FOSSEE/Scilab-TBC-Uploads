//Example 2.4, Page Number 64
//Hole Lifetime Calculation
clc;
n=5*(10**24) //Donor Concentration in per meter cube

//For GaAs
B=7.2*(10**-16)//Constant of proportionality for GaAs
t1=1/(B*n) //t1 is the Hole lifetime for GaAs

//For Si
B=1.8*(10**-21)//Constant of proportionality for Si
t2=1/(B*n) //t2 is the Hole lifetime for Si

disp(t1,"The Hole Lifetime for GaAs in  pico seconds is:");
disp(t2,"The Hole Lifetime for Si in  micro seconds is:");
