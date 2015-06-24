//Exa 1.20
clc;
clear;
close;
format('v',7);

//Given Data :
tA1=0;//degree centigrade
tB1=0;//degree centigrade
tA2=100;//degree centigrade
tB2=100;//degree centigrade
//tA=l+m*tB+n*tb^2
l=0;//by putting tA and tB equals to zero
//tA=m*tB+n*tB^2
//Thermometer immersed in oil bath
tA1=51;//degree centigrade
tB1=50;//degree centigrade
//solving for m and n by matrix
A=[tB1 tB1^2;tB2 tB2^2];
B=[tA1;tA2];
X=A^-1*B;
m=X(1);
n=X(2);
tA=25;//degree centigrade
P=[n m -tA];//polynomial for calculation of tB
tB=roots(P);
tB=tB(2);//neglecting +ve sign
disp(tB,"When A reads 25 degree C, B reading in degree C : ");
//let tB=25;//degree C
tB=25;//degree C
tA=l+m*tB+n*tB^2;//degree C
disp(tA,"When B reads 25 degree C, A reading in degree C : ");
disp("B is correct. A shows error greater than B.")
//Answer is not accurate in the book.
