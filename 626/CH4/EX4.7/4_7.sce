clear;
clc;
close;
disp("Example 4.7")
NPR=10 //Pressure ratio
gm=1.33 //gamma
Cp=1156 // in J/kg.K
ae=0.94 //adiabatic efficiency
tpr=((NPR)^((gm-1)/gm)-(ae*((NPR)^((gm-1)/gm)-1)))^((-1)*(gm/(gm-1)))
disp(tpr,"(a)Nozzle total pressure ratio:")
de=-log(tpr) //entropy rise inadiabatic nozzle
//let p=pt9/p9
p=tpr*NPR*1 //p=pt9/p9; p0=p9 foe expanded nozzle
M9=((2/(gm-1))*((p)^(((gm-1)/gm))-1))^(1/2)
disp(M9,"(c)Nozzle exit Mach no. M9 (perfectly expanded)")

