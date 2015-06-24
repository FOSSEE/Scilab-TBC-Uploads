clc
disp("Example 1.20")
printf("\n")
disp("calculate dynamic and substrate resistance")
printf("Given\n")
disp("forward current=20mA,cut in voltage=0.33v")
If=20*10^-3
Vf=0.33
Rf=Vf/If
If1=If-(10^-2)  //min forward current 
If2=If+(10^-2)  //max forward current
Vf1=0.31
Vf2=0.35
rd=(Vf2-Vf1)/(If2-If1)
rd1=0.026/If
rsub=rd-rd1
printf("static forward resistance=\n%f ohm\n",Rf)
printf("Dynamic resistance=\n%f ohm\n",rd)
printf("Dynamic resistance using forward current=\n%f ohm\n",rd1)
printf("substrate resistance=\n%f ohm\n",rsub)
