//Example 4 . 1
//To Find out the o r d e r o f the f i l t e r
clc ;
ap =1; //db
as =30; //db
op =200; // rad / s e c
os =600; // rad / s e c
N= log( sqrt ((10^(0.1* as) -1) /(10^(0.1* ap) -1)))/log(os/op);
disp ( ceil (N), ' Order o f the f i l t e r , N =' );
