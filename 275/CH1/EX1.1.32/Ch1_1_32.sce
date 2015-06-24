clc
disp("Example 1.32")
printf("\n")
disp("Plot the piecewise-linear characterisic of Germanium diode")
printf("Given\n")
//given
Vf=[0 0.3 0.35]
If=[0 0 0.1]
plot2d(Vf, If)
xlabel("Vf")
ylabel("If")
xtitle("Piecewise-linear characteristic of diode")