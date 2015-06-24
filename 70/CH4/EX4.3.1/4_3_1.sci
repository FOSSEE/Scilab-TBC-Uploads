clear;
close;
clc;
n=input('Enter the value of n:');
for i=1
    for j=i;
        a(i,j)=2;
        a(i,j+1)=-1;
    end
end
for i=2:n-1
    for j=i
        a(i,j-1)=-1;
        a(i,j)=2;
        a(i,j+1)=-1;
    end
end
for i=n
    for j=i
        a(i,j-1)=-1;
        a(i,j)=2;
    end
end
disp(a,'a='); 
[L,D,U]=lu(a)
determinant=1;
for i=1:n
        determinant=determinant*D(i,i);
end
disp(determinant,'Determinant=')
//end