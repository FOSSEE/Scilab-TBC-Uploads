clc
pathname=get_absolute_file_path('8_3_2.sce')
filename=pathname+filesep()+'832.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook \n ")
disp("part 1")
function[Cp]=fun1(T)
    Cp=0.02900+ T*0.2199*10^(-5) + T^2 * 0.5723 *10^(-8) - T^3 * 2.871 * 10^(-12)
endfunction
[deltaH,err]=intg(T1,T2,fun1) //intg is an inbult function used for definite integration
Qdot=ndot*deltaH
printf("Heat Transferred=%f KJ/min",Qdot)
disp("part2")
function[CV]=fun2(T)
    CV=fun1(T)-8.14* 10^(-3)
endfunction
[deltaU,err]=intg(T3,T4,fun2) //intg is an inbult function used for definite integration
n=P*V/(R*T)
Q=n*deltaU
printf("Heat transferred=%f KJ",Q)