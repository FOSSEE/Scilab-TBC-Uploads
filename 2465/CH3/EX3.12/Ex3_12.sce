//Chapter-3,Example 12,Page 60
clc;
close;

t_half =6.13    //half life of Ac(222)

t= 10   //time period

amnt=1/10^(t*0.693/(2.303*t_half))

printf('the amount of the substance left is %.4f ',amnt)
