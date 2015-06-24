
//2x+3y=42, 5x-y=20
clear; 
clc;
close;
x=poly(0,'x');
y=(42-2*x)/3;  //equation 1
y=5*x-20;      //equation 2
for x=1:20
  if((42-2*x)/3==5*x-20)
    mprintf("x=%i  ",x)
    break
  end
end
//substitute the x value in any one of the above equations
y=5*x-20;mprintf("y=%i",y)
printf("\n the solution is : \n");
[x y]
