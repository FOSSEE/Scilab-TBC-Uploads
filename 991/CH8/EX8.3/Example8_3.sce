//Example 8.3.
clc
format(6)
Vm=400
PIV=sqrt(3)*Vm
disp("As the supply voltage is 400 sin 314t, Vm = 400 V")
disp(PIV,"Peak inverse voltage(PIV)(V) = sqrt(3)*Vm =")
RMS=20
ff=1.11
Iav=round(RMS/ff)
disp("RMS value of current = 20 V")
disp(Iav,"Average value of current, Iav(A) = RMS value/form factor =")
pr=PIV*Iav
pr1=pr*10^-3
disp(pr1,"Power rating of the SCR(kW) = PIV * Iav =")