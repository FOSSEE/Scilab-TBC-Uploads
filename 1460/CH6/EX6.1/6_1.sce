clc
//intialization of variables
T1=40+460 //R
T2=340+460 //R
//calculations
function [cv] = Cv(T)
	cv=0.162+0.00046*T
endfunction
du=intg(T1,T2,Cv)
//results
printf("Change in specific internal energy = %.1f B/lbm",du)
