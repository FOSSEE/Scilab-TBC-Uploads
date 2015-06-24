//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 12


clear;
clc;


//Given:
//M polymerises to Mn, n>1
P1 = 1; //pressure (bar)
P2 = 2; //(bar)
x1 = 0.15; //mol fraction of polymer at 1 bar
x2 = 0.367; //mol fraction of polymer at 2 bar

//To find the value of n

//(a)
//The given subpart is theoreical and does not involve any numerical computation

//(b)
//K1 = x1/(1-x1)^n = K*P1^n-1
//K2 = x2/(1-x2)^n = K*P2^n-1
//Dividing the above equations and taking log on both sides
//(n-1)log 2 = log(x2/x1)+nlog(1-x1/1-x2)

n = round((log(x2/x1)+log(2))/(log(2)-log((1-x1)/(1-x2))));
mprintf('The value of n is %i',n);

//end