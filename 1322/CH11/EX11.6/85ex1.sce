
//x+2*y=5,  3*x-2*y=7
clear; 
clc;
close;
x=poly(0,'x');
//graph of x+2*y=5
x=[0 -1 2 5];
y=(5-x)/2;
x_vs_y=[x;y];
plot(x,y,'b--.x')
//graph of 3*x-2*y=7
x=[0 -1 7/8 4];
y=(3*x-7)/2;
plot(x,y,'b--.o')
for x=1:100
  if((5-x)/2==(3*x-7)/2)
    break
  end
end
mprintf("the solution of the equation is")
y=(5-x)/2;
mprintf("x=%i\ny=%i ",x,y)
plot(x,y,'r.->')
xtitle("graph of simultaneous equations","x axis","y axis");
xgrid;
legend("x+2*y=5","3*x-2*y=7",4);
