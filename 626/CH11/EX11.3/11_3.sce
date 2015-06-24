clear;
clc;
close;
disp("Example 11.3")

pc=200 //in atm
p2=1 //in atm
gm=1.3
Ath=25 //in m^2
Cf=((2*gm^2)/(gm-1)*(2/(gm+1))^((gm+1)/(gm-1))*(1-(p2/pc)^((gm-1)/gm)))^(1/2)
disp(Cf,"(a)Optimum thrust coefficient Cf,opt :")
pc=200*101 //converting to MPa
F=Ath*Cf*pc
disp(F,"(b)thrust F in N")
pc=200
M2=((2/(gm-1))*((pc/p2)^((gm-1)/gm)-1))^(1/2)
disp(M2,"(c)Nozzle exit Mach no. M2 :")
A=1/M2*(2/(gm+1)*(1+(gm-1)/2*M2^2))^((gm+1)/(2*(gm-1)))
disp(A,"(d)Nozzle area expansion ratio A2/Ath :")