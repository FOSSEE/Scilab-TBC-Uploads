clear;
clc;
close;
x=poly(0,'x');
//let x be amount of increase in pence
mans_new_wage=480+x;
womens_new_wage=370+x;
for x=1:500
  if((480+x) == (6*(370+x)/5))//by given data
    mprintf("the weekly increase is %ip \n",x)
   end
end
 

						

