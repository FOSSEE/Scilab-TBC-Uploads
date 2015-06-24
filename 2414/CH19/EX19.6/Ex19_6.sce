clc;
close();
clear();
//page no 608
//prob no. 19.6
code=[0 1 0 1 1 0];
t=[0:.01:2]   //for x-axis
a=[sin(2*%pi.*t)]    //for y-axis
y=[]
x=[]
for i=1:length(code)
        
    if code(i)==1 then
        a=-a;
    end
    y=[y a]
    x=[x 2*%pi.*(t+2*(i-1))]
end

clf
plot(x,y)
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin";
xtitle('DPSK used to encode 010110','Time','amplitude')
xgrid
