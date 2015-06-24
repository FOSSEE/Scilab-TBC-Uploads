
//ex1
clear; 
clc;
close;
x=poly(0,'x');
//sum of first no.(i.e., x) and 3 times the second no.(i.e., y) is 53 =>x+3*y=53
y=(53-x)/3;
//difference between 4 times the first and twice the 2nd is 2 => 4x-2y=2
y=(4*x-2)/2;
printf("the solution is : \n");
for x=1:100
  if((53-x)/3==(4*x-2)/2)
    mprintf("x=%i",x)
    break
  end
end
//"substitute the x value in any one of the above equations"
y=(53-x)/3;mprintf("y=%i",y)


