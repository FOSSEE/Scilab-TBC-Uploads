clc;
close();
clear();
//page no 609
//prob no. 19.7
code=[0 0 1 1 1 0 0 0 0 0 0 1];
t=[0:.01:2]   //for x-axis
y=[]
x=[]
p=0   //phase shift
for i=1:2:length(code)
    if code(i)==0 then
        if code(i+1)==0 then
            p=p+0
        else
            p=p+%pi/2
        end
    else
        if code(i+1)==1 then
            p=p+%pi
        else
            p=p+3*%pi/2
        end
    end
    y=[y sin(2*%pi.*t+p)];
    x=[x 2*%pi.*(t+(i-1))];
end
   
clf()
plot(x,y);
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin";
xtitle('DQPSK used to encode 001110000001','Time','amplitude');
xgrid
