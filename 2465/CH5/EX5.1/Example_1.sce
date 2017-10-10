//Chapter-5,Example 1,Page 121
clc();
close();

//for 1st order reaction 
//k = (1/t)*log(a/(a-x))

a= 46.1     //time value 

//time intervals

t=[ 5 10 20 30 50]

x=[ 37.1 29.8 19.6 12.3 5.0]

k = (1 ./t).*log(a./(x))

printf('value of k are ' )

disp(k)

printf('since k values are fairly constant by putting in 1nd order rate equation. \nHence decomposition of H2O2 is of 1st order.')

