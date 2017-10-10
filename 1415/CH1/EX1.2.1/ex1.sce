//Example 1 Page 57
clc
clear
//defining the function
function y=C(x)
    y=1.6*x+1.9
endfunction

disp('a)')
//for cost of 1-mile trip 
x=1
y=C(x)//function calling
mprintf("1-mile trip %f dollars\n",y)
//for cost of 2-mile trip
x=2
y=C(x)//function calling
mprintf("2-mile trip %f dollars\n",y)
//for cost of 3-mile trip
x=3
y=C(x)//function calling
mprintf("3-mile trip %f dollars\n",y)
//so the cost of x-mile trip is
x=poly([1.9 1.6],'x','coeff')
disp(x)
//the cost function is sum of two terms is the variable cost that depends on x, and the other is fixed cost which is independent
disp('Cost=VariableCost + FixedCost')

disp('b)')
//cost of 40-mile trip is
x=40
y=C(x)
mprintf("the cost of 40-mile trip is %f dollars",y)//displaying the cost of 40-mile trip

disp('c)')
//to calculate the cost of second mile
x=1
c1=C(x)//function calling
x=2
c2=C(x)//function calling
cost=(c2-c1)//calculating the cost of second mile
mprintf("cost of second mile is %f dollars",cost)

disp('d)')
x=[0 1 2]
disp(x)
y=C(x)//function calling
disp(y)
plot(7,5,x,y,'blue')//plotting the graph
xtitle(' ','Miles','Dollars');
