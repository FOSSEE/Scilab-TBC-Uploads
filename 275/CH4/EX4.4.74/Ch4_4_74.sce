clc
disp("Example 4.74")
printf("\n")
disp("plot the drain characteristics of JFET")
//given
Vds=[0 1 2 2.5 3 4 6 8]
Id=[0 2 4.5 5.3 5.5 5.5 5.5 5.5]
plot2d(Vds,Id)
xlabel("Vds(V)")
ylabel("Id(mA)")
xtitle("Plot of Vds V/s Id")