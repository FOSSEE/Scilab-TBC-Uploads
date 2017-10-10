//Chapter 7 Ex13
clc;
clear;
close;
//let fraction be x/y

x=poly(0,'x');
y=(3*x+1)/2;        //equation 1
y=2*x-1;    //equation 2
for x=1:99
  if (3*x+1)/2 ==2*x-1
    mprintf("x=%i \n",x)
    break
  end
end
disp("substitute the x value in any one of the above equations to find y.");
y=2*x-1;

printf("\nThe fraction is %d/%d",x,y);
