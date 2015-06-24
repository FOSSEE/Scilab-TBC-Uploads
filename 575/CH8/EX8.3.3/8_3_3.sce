clc
pathname=get_absolute_file_path('8_3_3.sce')
filename=pathname+filesep()+'833.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook \n ")
function[Cp]=fun(T)
    Cp=0.02894 + T* 0.4147 *10^(-5) + T^2 * 0.3191 * 10^(-8) - T^3 * 1.965 * 10^(-12)
endfunction
deltaH=intg(T1,T2,fun)  //intg is an inbult function used for definite integration
Qdot=ndot*deltaH*10^3 /60
printf(" \n Rate of heat removal= %f KW",Qdot)