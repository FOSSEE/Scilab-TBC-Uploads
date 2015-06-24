//Example 3.1
clc
disp("(a) Gain with feedback")
format(5)
av=1000/(1+(0.05*1000))
disp(av,"        AV_mid = Av_mid / 1+beta*Av_mid =")
flf=50/(1+(0.05*1000))  // in Hz
disp(flf,"(b)      f_Lf(in Hz) = f_L / 1+beta*Av_mid =")
fhf=((50*10^3)*(1+(0.05*1000)))*10^-6  // in MHz
disp(fhf,"(c)      f_Hf(in MHz) = f_H * (1+beta*Av_mid) =")
