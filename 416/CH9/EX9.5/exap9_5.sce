clear
clc
disp("example 9.5")
um=5
owp=2.6784*10^15
an=6.023*10^23
na1g=an/235
na5g=an*5/235
p=na5g/owp
printf("1 watt power requvires %efussions per day \n number of atoms in 5 gram is %eatoms \n power is %eMW ",owp,na5g,p)