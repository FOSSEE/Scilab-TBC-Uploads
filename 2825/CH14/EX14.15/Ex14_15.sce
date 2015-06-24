//Ex14_15 Pg-701
clc

alpha=3.5 //loss in fiber
Pi=0.5//input power in milli watt
L=4 //length of fiber in km

disp("The attenuation of an optical fiber is given by")
disp("             alpha = (10/L)*log(Pi/Po)")

Po=Pi/(10^(alpha*L/10))
printf("\n Output power = %.2f mW",Po*1e3)
