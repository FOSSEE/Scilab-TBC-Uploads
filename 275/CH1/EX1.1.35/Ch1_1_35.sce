clc
disp("Example 1.35")
printf("\n")
disp("find out series resistance in circuit fig 1.32")
V=3
rd=0.5
Vr=0.3
IF=174*10^-3
//resistance
R=(V-Vr-(IF*rd))/IF
printf("The value of resistance is \n%f ohm\n",R)
