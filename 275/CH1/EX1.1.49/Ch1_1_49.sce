clc
disp("Example 1.49")
printf("\n")
disp("find the maximum forward current at 25c and 80c")
printf("Given\n")
T1=25            //to find maximum forward current at this temperature
T2=80            //to find maximum forward current at this temperature
VT1=0.65         //forward voltage drop(constant at all temperature)
VT2=VT1
PT1=80*10^-3     //maximum power dissipation at 80c
PT2=30*10^-3     //maximum power dissipation at 30c
IT1=PT1/VT1
IT2=PT2/VT2
T=[0 25 80 114]
P=[80 80 30 0]
plot2d(T,P)
xlabel("Temperature in c")
ylabel("Power in mW")
xtitle("Power-Temperature curve")
printf("Forward current at T1=\n%f Ampere\n",IT1)
printf("Forward current at T2=\n%f Ampere\n",IT2)
