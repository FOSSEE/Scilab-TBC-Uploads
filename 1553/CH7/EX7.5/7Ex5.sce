//Chapter 7 Ex5
clc;
clear;
close;
//let numbers be x and y

x=poly(0,'x');
y=x-11;        //equation 1
y=45-x;    //equation 2
for x=1:99
  if x-11 ==45-x
    mprintf("x=%i \n ",x)
    break
  end
end
disp("substitute the x value in any one of the above equationsto find y.");
y=x-11;
printf("\nThus the numbers are %d and %d: \n",x,y);


