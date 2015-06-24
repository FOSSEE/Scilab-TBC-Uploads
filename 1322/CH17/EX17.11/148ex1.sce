

//x+y=19, xy=84
clear;
clc;
close;
x=poly(0,'x');
//substitute y=19-x in xy=84
Y=x*(19-x)-84;
x=roots(Y);
y=19-x;
mprintf('the solutions are: \n')
mprintf("(x,y)=(%i,%i) \n",x,y)
