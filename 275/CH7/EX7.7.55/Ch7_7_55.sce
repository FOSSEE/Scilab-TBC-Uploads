clc
disp("Example 7.55")
printf("\n")
disp("Find the maximum frequency deviation & modulation index")
printf("Given\n")
disp("Kf=1KHz/v,Modulating voltage=15v,frequency=3KHz")
K=10^3
Vm=15
Fm=3*10^3
del=K*Vm
Mf=del/Fm
printf("Maximum frequency Deviation is =\n%d hz\n",del)
printf("Modulation Index=\n%f\n",Mf)
