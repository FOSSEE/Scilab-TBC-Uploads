// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 1")
p=689;//pressure of gas in cylinder in kpa
v1=0.04;//initial volume of fluid in m^3
v2=0.045;//final volume of fluid in m^3
W_paddle=-4.88;//paddle work done on the system in KJ
disp("a> work done on piston(W_piston)in KJ can be obtained as")
disp("W_piston=pdv")
function y = f(v), y=p, endfunction
W_piston=intg(v1,v2,f) 
disp("b> paddle work done on the system(W_paddle)=-4.88 KJ")
disp("net work done of system(W_net)in KJ")
disp("W_net=W_piston+W_paddle")
W_net=W_piston+W_paddle
disp("so work done on system(W_net)=1.435 KJ")
