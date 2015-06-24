//Example 16-2,Page No-623

clear
clc

w=0.65
h=0.38

fco = 300/(2*((0.65*2.54)/100))
f =1.42*fco

printf('The cutoff frequency of the %.3f Ghz',fco/10^3)
printf('\n\n Operating frequency of the wavwguide is %.2f Ghz',f/10^3)
