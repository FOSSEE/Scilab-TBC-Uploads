clc
pathname=get_absolute_file_path('3_1_2.sce')
filename=pathname+filesep()+'312.sci'
exec(filename)
disp("we know that V(T)=Vo[1+0.18182x10^(-3)xT +0.0078x10^(-6)xTxT]")
Vat0=Vat20/(1+0.18182*10^(-3)*T1 +0.0078*10^(-6)*T1*T1)
//the function is defined with the variable as temperature
function[volume]=volume(T)
    volume=Vat0*(1+0.18182*10^(-3)*T +0.0078*10^(-6)*T*T);
endfunction
printf(" vat20=%f",volume(T1))
printf(" \n vat100=%f",volume(T2))
change=((volume(T2))-(volume(T1)))*4/(%pi*D*D)
printf(" \n change in the height of mercury level= %f ft",change)
//the answer is a bit different due to rounding off of volume(T2) in textbook