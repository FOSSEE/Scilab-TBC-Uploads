clc
pathname=get_absolute_file_path('9_5_1.sce')
filename=pathname+filesep()+'951.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
function[Cp]=fun(T)
    Cp=29.50*10^(-3)+ T*0.8188*10^(-5) - T^2 * 0.2925 *10^(-8) + T^3 * 0.3652 * 10^(-12)
endfunction
H2=intg(T1,T2,fun)  //intg is an inbuilt function which can calculate definite integrals
E=nNH3/4
nO2out=nO2in-nNH3*5/4
nNO=nNH3
nH2O=nNH3*6/4
deltaH=E*Hr+(nO2out*H1+nNO*H2+nH2O*H3)
Qdot=deltaH
printf(" \n Heat Transferred= %f kW",Qdot)