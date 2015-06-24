clear
clc

x=.5
y=.5
for i=1:4
    x=(.7*sin(x))+(.2*cos(y))
    y=(.7*cos(x))-(.2*sin(y))
    
end

mprintf("x= %f, y=%f",x,y)
