//Part B Chapter 4 Example 5
clc;
clear;
close;
D=25;//mm
L=250;//mm
d=0.120;//mm(stretch)
F=60;//kN
theta=0.030;//radian
T=0.5;//kNm
epsilon=d/L;
sigma=F*1000*4/(%pi*(D/1000)^2);//GN/m^2
E=sigma/epsilon/10^9;//GN/m^2
disp("Value of E is "+string(E)+" GN/m^2");
G=T*1000*32*L/1000/(theta*%pi*(D/1000)^4)/10^9;//GN/m^2
disp("Value of G is "+string(G)+" GN/m^2");
m=2*G/E/(1-2*G/E);
disp("Poisson ratio is "+string(1/m));
K=m*E/3/(m-1);//GN/m^2
disp("Bulk Modulus, K is "+string(K)+" GN/m^2");
