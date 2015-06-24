clc
//Initialization of variables
T1=100+460 //R
T2=300+460 //R
P1=15 //lb/in^2
P2=30 //lb/in^2
Cp=0.3 //B/lbm F
R=40 //ft-lb/lbm R
//calculations
function [s] = fun(f)
	s=Cp/f
endfunction
function [s2] = fun1(f)
	s2=R/(f*778)
endfunction
ds=intg(T1,T2,fun) - intg(P1,P2,fun1)
//results
printf("Change in entropy = %.4f B/lbm R",ds)
