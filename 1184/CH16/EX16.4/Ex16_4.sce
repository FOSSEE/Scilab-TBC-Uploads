//Example 16-4, page No - 648

clear
clc

lamda1 =5
f2 = 15*10^9
D=1.524

f1=984/lamda1
lamda2 =300/f2
G = (6*(D/lamda2)^2)
B = 70/(D/lamda2)

printf('The lowest possible oprerating frequency is %.1f Mhz ',f1)
printf('\n\n The gain at 15 Ghz is %.1f ',G/10^12)
printf('\n\n The beam width at 15Ghz is %.2f degree',B*10^6)
