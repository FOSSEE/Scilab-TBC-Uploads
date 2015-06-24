//to find periodic extension
x=[1 5 2;0 4 3;6 7 0];
y=[0 0 0];
for i=1:3
    for j=1:3
        y(i)=y(i)+x(j,i);
    end
end
y

