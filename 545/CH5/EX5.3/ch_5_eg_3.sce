clc
disp("the solution of eg 5.3 -->Discretization in 1-D space");
//given the source term f(x)=4x^2-2x-4
//given eqn d2y/dx2-2y=f(x)
y_1=0
y_4=-1
delta_x=1/3           //since given 3 parts and length=1
for i=0:3,j=0:delta_x:1;
end
//given to divide the line in 3 parts
//at node 2
//y_3-2*y_2
function d=fx3(x),
d=(4*x^2-2*x-4)
endfunction
f2=fx3(j(2))
f3=fx3(j(3))
y_3=((f2)*delta_x^2+(2+2*delta_x^2)*((f3)*delta_x^2-y_4)-y_1)/(1-(2+2*delta_x^2)^2)
y_2=(f3+2*y_3)*delta_x^2+2*y_3-y_4
disp(y_3,y_2,"is respectively",j(3),j(2),"the value of y at x=");