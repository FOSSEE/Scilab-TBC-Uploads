//Chapter-5,Example 3,Page 122
clc();
close();

t=[75 119 183]      //time in minute

V=[24.20 26.60 29.32]   //volume of alkali used

V_0=19.24

V_a=42.03

k=(2.303 ./t).*log10((V_a-V_0)./(V_a-V))

printf('values of k')

disp(k)

printf('since k values are fairly constant by putting in 1nd order rate equation. \nHence hydrolysis of methyl acetate is of 1st order.')
