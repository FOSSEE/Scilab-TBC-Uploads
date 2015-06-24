//Example 21.4
//Parallel Gauss-Seidel Method
//Page no. 730
clc;close;clear;

A=[3,2;6,2];
B=[2;3];
x(1)=1/4;
x(2)=1/5;
e=0.002;
old(1)=x(1);
old(2)=x(2);
new(1)=old(1);
new(2)=old(2);
printf('\t\tProcess 1\t\tProcess 2\n Itr\t\told\tnew1\t\told2\tnew2\n\n')
printf('  %i\t\t%g\t%g\t\t%g\t%g\n',0,old(1),new(1),old(2),new(2))
for i=1:4
    printf('  %i',i)
    for j=1:2
        k=0;
        for l=1:j-1
            k=k-(A(j,l)*old(l));
        end
        m=0;
        for l=j+1:2
            m=m-(A(j,l)*old(l));
        end
        new(j)=(B(j)+k+m)/A(j,j)
        printf('\t\t%.5g\t%.5g',old(j),new(j))
    end
    printf('\n')
    old(1)=new(1)
    old(2)=new(2)
end