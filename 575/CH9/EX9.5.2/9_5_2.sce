clc
pathname=get_absolute_file_path('9_5_2.sce')
filename=pathname+filesep()+'952.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
function[Cp]=fun1(T)
    Cp=34.31*10^(-3)+ T*5.469*10^(-5) + T^2 * 0.3661 *10^(-8) - T^3 * 11 * 10^(-12)
endfunction
HoutMethane=intg(T1,T2,fun1)
H4= -74.85 + HoutMethane
function[C]=fun2(T)
    C=34.28*10^(-3)+ T*4.268*10^(-5) - T^3 * 8.694 * 10^(-12)
endfunction
HoutFormal=intg(T1,T2,fun2) //intg is an inbuilt function which can calculate definite integrals
H7= -115.90+ HoutFormal
deltaH=NoutWater*H9+NoutCarbon*H8+NoutFormal*H7+NoutNitrogen*H6+NoutOxygen*H5+NoutMethane*H4-NinNitrogen*H3-NinOxygen*H2-NinMethane*H1
Q=deltaH
printf(" \n Q=%f Kj",Q)