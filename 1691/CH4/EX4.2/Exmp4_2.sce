//Example 4.2
clc
ft=25*2
format(3)
disp(ft,"(i) f_T(in MHz) = |A_i|*f =")
hfe=50000/200
format(4)
disp(hfe,"(ii) h_fe(in kHz) = f_T / f_beta =")
disp("(iii) |A_i| = h_fe / sqrt(1+((f/f_beta)^2)) =")
disp("At  f = 10 MHz")
ai=250/sqrt(1+(((10*10^6)/(200*10^3))^2))
format(2)
disp(ai,"|A_i| =")
disp("At  f = 100 MHz")
ai=250/sqrt(1+(((100*10^6)/(200*10^3))^2))
format(4)
disp(ai,"|A_i| =")
