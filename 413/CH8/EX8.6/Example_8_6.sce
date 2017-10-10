clc
clear
for i=1:60
    for j=1:60
        A(i,j)=0
    end
end
for i=2:9
    A(i,i)=-1
    A(i,10+i)=1
end
for i=1:10:51
    A(i,i)=1
end
for i=10:10:60
    A(i,i)=1
end
for i=12:19
    A(i,i-10)=1
    A(i,i-1)=1
    A(i,i)=-4
    A(i,i+1)=1
    A(i,i+10)=1
end
for i=22:29
    A(i,i-10)=1
    A(i,i-1)=1
    A(i,i)=-4
    A(i,i+1)=1
    A(i,i+10)=1
end
for i=32:39
    A(i,i-10)=1
    A(i,i-1)=1
    A(i,i)=-4
    A(i,i+1)=1
    A(i,i+10)=1
end
for i=42:49
    A(i,i-10)=1
    A(i,i-1)=1
    A(i,i)=-4
    A(i,i+1)=1
    A(i,i+10)=1
end
for i=52:59
    A(i,i-10)=-1
    A(i,i)=(1+(2*0.073)/0.16)
end

disp(A)
for i=2:9
    B(i,1)=30
end
for i=1:10:51
    B(i,1)=20
end
for i=10:10:60
    B(i,1)=20
end
for i=12:19
    B(i,1)=0.6/(20*0.16)
end
for i=22:29
    B(i,1)=0.6/(20*0.16)
end
for i=32:39
    B(i,1)=0.6/(20*0.16)
end
for i=42:49
    B(i,1)=0.6/(20*0.16)
end
for i=52:59
    B(i,1)=25*(2*0.073)/0.16
end
X=A\B
for i=1:10:60
T=[ X(i,1), X(i+1,1),X(i+2, 1), X(i+3,1), X(i+4,1),X(i+5,1),X(i+6,1),X(i+7,1),X(i+8,1),X(i+9,1)]
disp(T)
end