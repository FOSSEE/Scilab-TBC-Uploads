clc
disp("Example 1.31")
printf("\n")
disp("Plot the piecewise-linear characteristic of silicon diode")
printf("Given\n")
//given
Vf=[0 0.7 0.74]
If=[0 0 0.2]
plot2d(Vf, If)
xlabel("Vf")
ylabel("If")
xtitle("Piecewise-linear characteristic of diode")
