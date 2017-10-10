//Chapter 7 Ex10
clc;
clear;
close;
//let numbers be x and y

x=poly(0,'x');
y=(3*x-5)/4;        //equation 1
y=(5*x+6)/7;    //equation 2
for x=1:99
  if((3*x-5)/4 ==(5*x+6)/7)
    mprintf("x=%i \n ",x)
    break
  end
end
disp("substitute the x value in any one of the above equations to find y.");
y=(5*x+6)/7;
printf("\n The numbers are : %d and %d",x,y);

