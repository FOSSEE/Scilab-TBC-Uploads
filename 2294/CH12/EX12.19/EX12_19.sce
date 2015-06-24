//Example 12.19
//Find the required values.
x=[0,0;8,8;8,0]
y=[0,0;3,3;0,3]
deff('z=f(x,y)','z=x/6')
I=int2d(x,y,f)
disp(I,'E[X]=')
deff('z=f(x,y)','z=y/6')
I=int2d(x,y,f)
disp(I,'E[Y]=')
deff('z=f(x,y)','z=x*y/6')
I=int2d(x,y,f)
disp(I,'E[XY]=')

