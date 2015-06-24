clc
disp("Example 7.56")
printf("\n")
disp("find the frequency deviation & modulation index")
printf("Given\n")
del=5*10^3
Vm=2.5
Kf=del/Vm
//when Vm=7.5
Vm=7.5
del1=Kf*Vm
//when Vm=10v
Vm=10
del2=Kf*Vm
Fm1=500
Mf1=del/Fm1
Mf2=del1/Fm1
Fm2=250
Mf3=del2/Fm2
printf("Frequency deviation at different modulating Voltage =\n%d hz\n%d hz\n",del1,del2)
printf("Modulation index at different frequency deviation & modulating frequency =\n%d\n%d\n%d\n",Mf1,Mf2,Mf3)
