//Chapter-5,Example 2,Page 122
clc();
close();

t=[7.18 18 27.05]      //time in minute

r=[ 21.4 17.7 15]   //rotation in degrees

r_0=24.09

r_a=-10.74

k=(1 ./t).*log10((r_0-r_a)./(r-r_a))

printf('values of k')

disp(k)

printf('since k values are fairly constant by putting in 1nd order rate equation. \nHence hydrolysis of methyl acetate is of 1st order.')
