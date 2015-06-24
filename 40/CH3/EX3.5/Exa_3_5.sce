//Response of non-recursive Filters
for i=1:4
    x(i)=0.5^i;
end
x1=[0;1;x(1:2)]
for i=1:4
     y(i)=2*x(i)-3*x1(i);
end     
y(1),y(2)