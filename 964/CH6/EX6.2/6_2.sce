//clc()
//y1 = x
//y2 = exp(-x)
for i = 1:6
    if i == 1 then
        x(i) = 0;
       else   x(i) = x(i-1) + 0.2;
    end 
    y1(i) = x(i);
    y2(i) = exp(-x(i));
end
disp(x,"x = ")
disp(y1,"y1 = ")
disp(y2,"y2 = ")
plot(x,y1);
plot(x,y2);
xtitle("f(x) vs x","x","f(x)")
// from the graph, we get
x7 = 5.7;
disp(x7, "answer using two curve graphical method =  ");
