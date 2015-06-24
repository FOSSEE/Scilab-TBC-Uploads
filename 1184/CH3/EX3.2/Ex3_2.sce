//Example 3-2 ,Page No - 102

clear
clc

frq =980*10^3
frq_range = 5*10^3

fusb = frq+frq_range
flsb = frq-frq_range
bw=fusb-flsb

printf('The upper sideband is at %.1f Khz\n Lower sideband is at %.1f Khz\n and the babdwidth is %.1f Khz',fusb/10^3,flsb/10^3,bw/10^3)
