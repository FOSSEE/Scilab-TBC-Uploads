clc;
close();
clear();
//page no 309
//prob no. 9.3
//input graph
t=[0:.1:15-.1];
y=[(1/9)*(0:.1:1)^2 (1/8)*(1.1:.1:1.9)^2.1];
y=[y (7/8)*sin(2*%pi*t(21:150)/18.5)];
plot(t,y);
y=8*y;   
//quantized form
y1=[];
for i=1:10:150
    for m=-7:7
        if y(i) < m+0.5 then
            break();
        end
     end
     
    y1=[y1 m*ones(1:10)]
end
y1=y1./8;
plot2d(t,y1,[5]);
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin"; 
// Some operations on entities created by plot2d ...
a=gca();
a.isoview='off'; 
a.children // list the children of the axes
xtitle('Analog and quantized signals','t,ms','Normalised signal level')
xgrid()
