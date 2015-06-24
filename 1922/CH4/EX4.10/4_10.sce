clc
clear
//Initialization of variables
T1=673 //K
T2=293 //K
//calculations
eta=(T1-T2)/T1
//results
if eta>=0.5 then
    printf("Max efficiency  = %.3f and an efficiency of 0.5 is possible",eta)
else
    printf("Max efficiency  = %.3f and an efficiency of 0.5 is not possible",eta)
end
