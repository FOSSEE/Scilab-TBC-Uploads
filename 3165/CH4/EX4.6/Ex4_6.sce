//Example 4 . 6
//To Find out the o r d e r o f the p o l e s o f the Type 1 Lowpass Chebyshev F i l t e r
clc ;
ap =1; //dB
as =40; //dB
op =1000* %pi ;
os =2000* %pi ;
N= acosh ( sqrt ((10^(0.1* as) -1) /(10^(0.1* ap) -1)))/ acosh(os/op);
disp ( ceil (N), ' Order o f the f i l t e r , N =' );
