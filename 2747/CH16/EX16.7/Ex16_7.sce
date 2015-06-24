clc
clear
//Initialization of variables
N2=78.1
M=29
ba=2.12
co2=8.7
co=8.9
x4=0.3
x5=3.7
x6=14.7
//calculations
O2=N2/3.76
c=14.7
Z=2.238
X=(Z*17-x4*4-x5*2)/2
a=co2+co/2+x4+x6/2
b=3.764*a
AF=(O2+N2)*M/(Z*113)
//results
printf("Air fuel ratio = %.1f lbm air/lbm fuel",AF)

