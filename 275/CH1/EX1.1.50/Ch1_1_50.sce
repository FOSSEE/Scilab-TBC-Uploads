clc
disp("Example 1.50")
printf("\n")
disp("Find the maximum power at 80c")
T1=25
PT1=1000*10^-3    //maximum power dissipation at 25c
T2=80        
D=4*10^-3         //derating factor
PT2=PT1-((T2-T1)*D)   //maximum power dissipation at 80c
printf("Maximum Power dissipated at 80c=\n%f watt\n",PT2)
