clc
disp("Example 1.48")
printf("\n")
disp("Find the maximum forward current")
T1=25          //to find maximum forward current at this temperature
T2=65          //to find maximum forward current at this temperature
PT1=600*10^-3  //maximum power dissipation at 25c
D=5*10^-3      //derating factor
VT1=0.6        //forward voltage drop(constant at all temperature)
VT2=VT1
IT1=PT1/VT1    //maximum forward current at T1
PT2=PT1-((T2-T1)*D)
IT2=PT2/VT2    //maximum forward current at T2
printf("Forward current at temperature T1=\n%f Ampere\n",IT1)
printf("Forward current at temperature T2=\n%f Ampere\n",IT2)
