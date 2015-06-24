//Example 3.14
clc
disp("Given:  A_vmid = 500, f_L = 100 kHz, f_H = 20 kHz and beta = 0.01")
avf=500/(1+(0.01*500))
format(6)
disp(avf,"  A_vf = A_vmid / 1+beta*A_vmid =")
flf=100/(1+(0.01*500))  // in Hz
disp(flf,"  f_Lf(in Hz) = f_L / 1+beta*A_vmid =")
fhf=20*(1+(0.01*500))  // in kHz
disp(fhf,"  f_Hf(in kHZ) = f_H * (1 + beta*A_vmid) =")
bw=120-0.01667  // in kHZ
format(9)
disp(bw,"  BW_f(in kHz) = f_Hf - f_Lf =")
