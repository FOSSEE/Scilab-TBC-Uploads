disp("chapter3")
disp("example 14 ")
disp("given")
disp("the equations given are=")
disp("5i1-2i2-3i3=10")
disp("-2i1+4i2-i3=0")
disp("-3i1-i2+6i3=0")
a=[5 -2 -3; -2 4 -1; -3 -1 6]   //matrix
y=det(a)
b=[10 -2 -3; 0 4 -1 ;0 -1 6]    //matrix for i1 calculation (cramers rule)
w=det(b)                
i1=w/y
disp("current i1=")
disp(i1)
c=[5 10 -3;-2 0 -1; -3 0 6]       //cramers rule
x=det(c)
i2=x/y
disp("current i2=")
disp(i2)
d=[5 -2 10; -2 4 0; -3 -1 0]
z=det(d)
i3=z/y
disp("current i3=")
disp(i3)