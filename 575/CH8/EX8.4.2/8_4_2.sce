clc
pathname=get_absolute_file_path('8_4_2.sce')
filename=pathname+filesep()+'842.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("We have deltaHv at 69C hence We follow path ADG")
deltaHA=Cp*(T2-T1) + V*(1.013-P)*M/(D*10^4)
printf(" \n deltaHA=%f",deltaHA)
deltaHD=deltaHv
printf(" \n deltaHD=%f",deltaHD)
function[C]=fun1(T)
    C=0.13744 + T*40.85*10^(-5) - T^2 *23.92*10^(-8) + T^3 *57.66*10^(-12)
endfunction
deltaHG=intg(T2,T3,fun1)  //intg is an inbult function used for definite integration
printf(" \n deltaHG=%f Kj/mol",deltaHG)
Qdot=ndot*(deltaHA+deltaHD+deltaHG)/3600
printf(" \n rate of Heat supply= %f Kj/mol",Qdot)
printf(" \n In this problem we neglected V*deltaP as it is negligible ")