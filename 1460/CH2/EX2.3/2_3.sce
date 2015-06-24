clc
//initialization of variables
T1=500 //R
T2=1000 //R
w=2//lbm
//calculations
function[cp]=c(T)
    cp=0.282+0.00046*T
endfunction
Q=intg(T1,T2,c)
Heat=Q*w
printf("Heat flow = %d B",Heat-2)
