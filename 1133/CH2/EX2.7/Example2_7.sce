//Example 2.7
clc
disp("Before calculating critical frequencies it is necessary to calculate mid frequency gain of the given amplifier circuit. This is required to calculate C_in(miller) and C_out(miller)")
disp("      Av = -gm * RD")
disp("Here, RD should br replaced by RD || RL")
av=-6*2
disp(av,"Therefore,    Av = -gm*(RD||RL) =")
cin=2*(12+1)  // in pF
disp(cin,"C_in(miller)(in pF) = C_gd*(Av+1) = C_rss*(Av+1) =")
format(6)
cout=(2*13)/12  // in pF
disp(cout,"C_out(miller)(in pF) = C_gd*(Av+1) / Av = ")
disp("G_gs = C_iss - C_rss = 4 pF")
disp("We know analyze input and output network for critical frequency")
disp("    f_c(input) = 1 / 2*pi*RS*CT")
disp("               = 1 / 2*pi*RS*[C_gs+C_in(miller)]")
format(4)
fc1=(1/(2*%pi*100*30*10^-12))*10^-6  // in MHz
disp(fc1,"    f_c(input)(in MHz)= ")
fc2=(1/(2*%pi*((48.4*10^6)/(24.2*10^3))*(2.166*10^-12)))*10^-6  // in MHz
format(6)
disp(fc2,"    f_c(output)(in MHz) = 1 / 2*pi*(RD||RL)*C_out(miller) =")
disp("We have calculated both the critical frequencies :")
disp("(a) f_c(input) = 53 MHz")
disp("(b) f_c(output) = 36.74 MHz")
