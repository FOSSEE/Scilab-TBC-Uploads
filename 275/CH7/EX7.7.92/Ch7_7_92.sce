clc
disp("Example 7.92")
printf("\n")
disp("Find the Peak Value")
printf("Given\n")
disp("Vpp=100v,deflection=5cm")
Vpp=100
D=5
DS=Vpp/D
//another sinusoidal produces a deflection of 8cm
D1=8
Vpp1=DS*D1
printf("The peak value of unknown voltage=\n%d volt\n",Vpp1)
