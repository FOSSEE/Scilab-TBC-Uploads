clc
clear
for i=1:35
    for j=1:35
        A(i,j)=0
    end
end
for i=1:35
    A(i,i)=-4
end
for i=1:34
    A(i,i+1)=1
end
for i=2:34
    A(i,i-1)=1
end
for i=6:5:30
    A(i,i-1)=0
end
for i=1:30
    A(i,i+5)=1
end
for i=1:30
    A(i+5,i)=1
end
for i=5:5:35
    A(i,i+1)=0
end

disp(A)
for i=1:35
    B(i,1)=-2
end

X=A\B
disp(X)
for i=1:5:35
T=[ X(i,1), X(i+2,1),X(i+3, 1), X(i+4,1), X(i+5,1)]
disp(T)
end