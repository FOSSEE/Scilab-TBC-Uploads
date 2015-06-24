//Example 8.10, page no-512
clear
clc
R=0.15*10/50
K=1
tow=15
deg=K*R*tow
//(i)
a=15-deg
printf("(i)The actual temperature when instrument reads 15°C is %.2f°C\n The true temperature at 5000 metres = %.2f ",a,a)

//(ii)
alt_red=deg*50/0.15
h=5000-alt_red
printf("\n(ii)\nThe true altitude at which 15°C occurs is %d metres",h)
