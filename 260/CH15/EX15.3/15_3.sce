//Eg-15.3
//pg-611

clear
clc

// The value of y can be computed using the equation : 
// y(i,j+1) = 0.68*y(i,j) + 0.16*y(i+1,j) + 0.16*y(i-1,j)
y = zeros(5,5);
y(1,1:5) = 25;
y(1:5,1) = 100;
y(1:5,5) = 100;

//disp(y)

for(j = 2:4)
    for(i = 1:4)
        y(i+1,j) = 0.68*y(i,j) + 0.16*y(i,j+1) + 0.16*y(i,j-1);
    end

end

printf('The values of y for different t are shown in the table(Rows represents different time level and columns represent x0,x1,x2,x3,x4) below and the plot corresponding to this value is shown in the figure generated\n')
disp(y)

//There is a mistake in the textbook

x = 0:0.25:1;

y1 = y(1,1:5);
y2 = y(2,1:5);
y3 = y(3,1:5);
y4 = y(4,1:5);
y5 = y(5,1:5);

plot(x,y1,x,y2,x,y3,x,y4,x,y5)
legend('t0','t1','t2','t3','t4')
xlabel('x')
ylabel('y')
