clc
pathname=get_absolute_file_path('8_3_4.sce')
filename=pathname+filesep()+'834.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook \n ")
function[Cp1]=fun1(T)
    Cp1=0.04937 + T*13.92*10^(-5) - T^2 *5.816*10^(-8) + T^3 *7.280 * 10^(-12)
endfunction
function[Cp2]=fun2(T)
    Cp2=0.06803 +T*22.59*10^(-5) - T^2 *13.11*10^(-8) + T^3 *31.71 * 10^(-12)
endfunction
function[Cp]=fun(T)
    Cp=x*fun1(T)+ (1-x)*fun2(T)
endfunction
deltaH=intg(T1,T2,fun) //intg is an inbult function used for definite integration
printf(" \n Heat capacity of Mixture=%f KJ/mol",deltaH)
Qdot=ndot*deltaH
printf(" \n Heat Required=%f KJ/h",Qdot)