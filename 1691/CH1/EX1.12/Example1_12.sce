//Example 1.12
clc
disp("A_v = 1000 and beta = 0.1")
fh=1+(0.1*1000)
format(4)
disp(fh,"(i) f_Hf/f_H = 1 + beta*A_v =")
fl=1/(1+(0.1*1000))
format(7)
disp(fl,"and  f_Lf/f_L = 1 / 1+beta*A_v =")
disp("(ii) With f_L = 20 Hz and f_H = 50 kHz")
fll=20*0.0099
format(6)
disp(fll,"f_Lf(in Hz) =")
fhh=(50*101)*10^-3
format(5)
disp(fhh,"f_Hf(in MHz) =")
