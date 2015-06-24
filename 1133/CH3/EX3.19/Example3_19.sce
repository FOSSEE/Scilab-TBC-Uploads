//Example 3.19
clc
disp("Given: Av = 10, BW = 1*10^3, n =3")
disp("(i) Overall voltage gain")
disp("The gain of cascaded amplifier without feedback = 10*10*10 = 1000")
avf=1000/(1+(0.1*1000))
format(4)
disp(avf,"A_vf = Av / 1+Av*beta =")
disp("(ii) Bandwidth of cascaded stage")
disp("Bandwidth of cascaded amplifier without feedback")
bw=((1*10^6)*sqrt((2^(1/3))-1))*10^-3  // in kHz
format(7)
disp(bw,"  BW(cascade)(in kHz) = BW*sqrt(2^(1/n) - 1) =")
bwf=(509.82*10^3*(1+(0.1*1000)))*10^-6  // in MHz
format(6)
disp(bwf,"  BW_f(in MHz) = BW * (1 + beta*A_v mid) =")
