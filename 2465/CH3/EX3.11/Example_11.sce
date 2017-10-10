//Chapter-3,Example 11,Page 59
clc;
close;

t_half = 5760    //half life of carbon(14)

amnt = 1/4      // amount of carbon in fresh wood

t= 2.303*t_half*log10(1/amnt)/0.693

printf('the age of the wood is %.f years ',t)
