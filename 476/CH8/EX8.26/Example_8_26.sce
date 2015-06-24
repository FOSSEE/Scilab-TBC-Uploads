//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 26


clear;
clc;


//Given:
//At 333 K
x1 = [0 0.033 0.117 0.318 0.554 0.736 1.000]; //liquid composition of acetone
pp1 = [0 25.33 59.05 78.37 89.58 94.77 114.63]; //partial pressure of acetone (kPa)
Pw = 19.91; //vapour pressure of water at 333 K (kPa)

//To calculate the partial pressure of water in vapour phase

//Using eq. 8.100 (Page no. 372) [Gibbs-Duhem Equation] and rearranging

//dp2/p2 = -x1/(1-x1)*intg(dp1/p1)

//ln p2/Pw = -x1/(1-x1)*intg(dp1/p1)
//Let k = x1/((1-x1)*p1)
for i = 2:6
    k(i) = x1(i)/((1-x1(i))*pp1(i));
end
k(1) = 0; k(7) = 0.1; //k(7) should tend to infinity

clf
plot(pp1,k)

//From graph, area gives the integration and hence partiaal pressure of water is calculated
pp2 = [19.91 19.31 18.27 16.99 15.42 13.90 0];

mprintf("The results are:");
mprintf('\n  Acetone composition      Partial pressure of water');
for i = 1:7
    mprintf('\n       %f                       %f',x1(i),pp2(i));
end

//end