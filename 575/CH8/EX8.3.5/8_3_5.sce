clc
pathname=get_absolute_file_path('8_3_5.sce')
filename=pathname+filesep()+'835.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook \n ")
ndot=Vdot/22.4
function[Cp]=fun(T)
    Cp=0.03431 + T*5.469*10^(-5) + T^2 *0.3661*10^(-8) + T^3 *11*10^(-12)
endfunction
H1=intg(T1,T2,fun)  //intg is an inbult function used for definite integration
printf("H1=%f Kj/mol",H1)
disp("From Tables H2= -0.15 Kj/mol   ,   H3=8.17 Kj/mol")
H2= -0.15
H3=8.17
Qdot=(ndot*x*H1+ ndot*(1-x)*(H3-H2))/60
printf("Heat Input=%f KW",Qdot)