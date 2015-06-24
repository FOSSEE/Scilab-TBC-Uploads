clc
clear
//input
p1=9*10^4//total pressure
x=1*10^4//water pressure
//calculation
p2=(p1-x)/2//boyles law
p=p2+x//adding vapour pressure
//output
printf("the final pressure is %3.0e Pa",p)
