//example1.2
clc
disp("Identify combinations of series and parallel resistances.")
disp("The resistances 5ohm and 6ohm are in series, as going to carry same current.")
r=5+6
disp(r,"So equivalent resistance is(in ohm)=")
disp("While the resistances 3ohm,4ohm,4ohm are in parallel, as voltage across them same but current divides.")
r=10/12
format(4)
disp(r,"(1/R)=(1/3)+(1/4)+(1/5)=")
r=12/10
disp(r,"Therefore,  R(in ohm)=")
disp("Replacing these combinations redraw the fig. as shown in the fig. 1.28(a)")
disp("Now again 1.2ohm and 2ohm are in series so equivalent resistance is 2+1.2=3.2 ohm while 11ohm and 7ohm are in parallel.")
disp("Using formula (R1*R2)/(R1+R2)")
r=77/18
format(6)
disp(r,"equivalent resistance3 is (11*7)/(11+7)[in ohm]=")
disp("Replacing the respective combination redraw the circuit as shown in the fig 1.28(b).")
disp("Now 3.2 and 4.277 are in parallel")
r=(3.2*4.277)/(3.2+4.277)
format(7)
disp(r,"Therefore , replacing them by (3.2*4.277)/(3.2+4.277)[in ohm]=")
r=1+1.8304
disp(r,"R_ab(in ohm)=")
