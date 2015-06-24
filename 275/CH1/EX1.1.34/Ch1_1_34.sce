clc
disp("Example 1.34")
printf("\n")
disp("find out diode current")
//given
V=2
Vr=0.6
rd1=0
rd2=0.2
R=14
//when rd=0
//diode current
I1=(V-Vr)/R
printf("Diode current when rd=0 is \n%f ampere\n",I1)
//when rd=0.2
//diode current
I2=(V-Vr)/(R+rd2)
printf("Diode current when rd=0.2 is \n%f ampere\n",I2)
