//Example 1 Page 78
clc
clear
//The function f cannot be linear.If it were, we would have delta f=m*deltax//
disp(-4/2,'the ratio deltag/deltax is the same each time namely -4/2=')
disp('hence g is linear with slop m=-2.By the table g(0)=3 hence b =3')
disp('g(x)=-2x+3');
x=[0 2 4 6 8 10 12]// taking the x values as in the example
disp(x,'x')//displaying the same
f=[3 -1 -3 -6 -8 -13 -15]//taking the f(x) values
disp(f,'f(x)')//displaying the same
plot(x,f,'blue')//plotting the f(x) graph with 'blue' colour//
xtitle('f(x) Graph','x','f(x)')//xtitle gives the title to the graph first parameter is the title, the other two specify the axes names
g=[3 -1 -5 -9 -13 -17 -21]
disp(x,'x');//displaying x values
disp(g,'g(x)')//displaying g(x) values
plot(x,g,'red')//plotting the graph with colour red
xtitle('g(x) Graph','x','g(x)')////xtitle gives the title to the graph first parameter is the title, the other two specify the axes names

