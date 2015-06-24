//Example 1.7
clc
disp("The voltage gain of the amplifier with feedback is given as,")
disp("A_vf = A / 1+A*beta  where  beta = 0.1 and A = 100")
avf=100/(1+(100*0.1))
format(5)
disp(avf,"Therefore,  A_vf =")
disp("The bandwidth of an amplifier with feedback is given by,")
disp("B_wf = (1+A_mid*beta)f_H - f_L/(1+A_mid*beta)")
disp("Assuming f_H >> f_L we have")
disp("B_w = f_H  and  B_wf = (1+A_mid*beta)B_w")
bwf=(1+(100*0.1))*300
disp(bwf,"Therefore,  B_wf(in kHz) =")
disp("The gain bandwidth product before feedback can be given as")
gbp=100*300*10^3
format(7)
disp(gbp,"Gain bandwidth product = A_v*B_w =")
gbpf=9.09*3300*10^3
disp(gbpf,"Gain bandwidth product after feedback= A_vf*B_wf =")
disp("If bandwidth is to be limited to 800 kHz we have f_Hf = 800 kHz assuming f_Hf >> f_Lf")
disp("We know that")
disp("B_wf = (1+A_vmid*beta)*f_H")
b=((8/3)-1)/100
format(8)
disp(b,"Therefore,  beta =")
