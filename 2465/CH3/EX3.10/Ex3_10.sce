//Chapter-3,Example 10,Page 59
clc;
close;

t_half = 5577    //half life of carbon(14)

amnt = 1/6      // amount of carbon in fresh wood

t= 2.303*t_half*log10(1/amnt)/0.693

printf('the age of the wood is')

disp(t)

printf('years')

//mistake in textbook
