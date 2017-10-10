//Example 3 Page 100
clc
clear

x=[0 2 4 6 8 10 12 14]//assigning the values of x
y=[9 9 10 11 11 12 13 13]//assigning the values of y
disp(x,'x:')//displaying x values
disp(y,'y:')//displaying y values
xy=x.*y//calculating xy
disp(xy,'xy:')//displaying xy values
x2=x^2;//calculating x^2 values
disp(x2,'x square:')//displaying x^2 values
y2=y^2;//calculating y^2 values
disp(y2,'y square:')//displaying y^2 values
sumx=sum(x)//calculating sum of x
disp(sumx,'sum(x)')//displaying x values
sumy=sum(y)//calculating sum of y
disp(sumy,'sum(y)')//displaying y values
sumxy=sum(xy)//calculating sum of xy
disp(sumxy,'sum(xy)')//displaying xy values
sumx2=sum(x2)//calculating sum of x^2
disp(sumx2,'sum(x2)')//displaying x^2 values
sumy2=sum(y2)//calculating sum of y^2
disp(sumy2,'sum(y2)')//displaying y^2 values
n=8//given as n=8
r=(((n*(sumxy))-(sumx*sumy))/((sqrt((n*sumx2)-((sumx)^2)))*(sqrt((n*sumy2)-((sumy)^2)))))//calculating r value
disp(r,'the value of r is :')//displaying r value
