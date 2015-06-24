clc
//Initialization of variables
T1=1400+460 //R
T2=1200+460 //R
//calculations
function [cp] = Cp(T)
	cp=0.317- 1.2*100/T +4*10^4 /T^2
endfunction
dh=intg(T1,T2,Cp)
//results
printf("Change in stagnation enthalpy = %.1f B/lbm",dh)
