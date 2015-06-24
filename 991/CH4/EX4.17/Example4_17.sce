//Example 4.17.
clc
format(6)
Io1=7.5*10^-6
T1=27
T2=127
disp("The saturation current at 400 K is,")
disp("Io2 = Io1 * 2^((T2-T1)/10)")
disp("    = 7.5*10^-6 * 2^(127-27/10)")
Io2=Io1*(2^((T2-T1)/10))
I=Io2*10^3
disp(I,"Io2(mA) = ")