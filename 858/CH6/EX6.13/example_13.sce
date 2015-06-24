clc
clear 
printf("example 6.13 page number 237\n\n")

//to find the composite distillate and residue

F = 100   //moles
xf = 0.4;
D = 60   //moles
W = 40   //moles

x = 0.2:0.05:0.45;
for i =1:((0.45-0.2)/0.05)+1

y(i) = 2.16*x(i)/(1+1.16*x(i));


z(i) = (y(i)-x(i))^-1;

end

plot (x,z'/10)
title('Batch Distillation Curve')
xlabel('x')
ylabel('y')
xw = 0.22;   //from the graph
yd = (F*xf-W*xw)/D;

printf("composition of distillate = %f",yd)
printf("\n\ncomposition of residue = %f",xw)
