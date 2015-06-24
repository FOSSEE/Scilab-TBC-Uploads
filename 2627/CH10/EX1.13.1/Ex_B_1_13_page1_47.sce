//Part B Ex 1.13 at page 1.47
clc;clear;close;
format('v',6);
G=100;//stable voltage gain
A=100000:200000;//variable gain
B=1/G;//Unitless
disp("When the gain of amplifier(A) is 100000");
G1=min(A)/(1+min(A)*B);//overall gain
disp(G1,"The overall gain(G) is ");
disp("When the gain of amplifier(A) is 200000");
G2=max(A)/(1+max(A)*B);//overall gain
disp(G2,"The overall gain(G) is ");
change=(G2-G1)/G*100;//% Change in gain
disp("Effect of variable gain :");
disp(change,"Corresponding to 100% Change in gain of active amplifier, Change in overall gain is(%) ");
