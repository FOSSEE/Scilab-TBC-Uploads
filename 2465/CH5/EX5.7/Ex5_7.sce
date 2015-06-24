//Chapter-5,Example 7,Page 124
clc();
close();

//for 2st order reaction 
//k = (1/a*t)*(x/(a-x))

a= 16    

//time intervals

t=[ 5 15 25 35]

//assume y = a-x

y=[ 10.24 6.13 4.32 3.41]    //volume of acid

x=a-y

k = (1 ./(a*t)).*(x./(y))

printf('value of k are ' )

disp(k)

printf('since k values are fairly constant by putting in 2nd order rate equation. \nHence dhydrolysis of methyl acetate is of 2st order.')

