//Example 11.2
//Leverrier's Method
//Page no. 337
clc;close;clear;

A=[2,2,2;2,5,5;2,5,1];
A1=A;
C(1)=0;
    for j=1:3
        for k=1:3
            if(j==k)
                C(1)=C(1)+A1(j,k)
            end
        end
    end
    disp(A,'A=')
        disp(A1,'A1=')
    printf('\nC1=')
    disp(C(1));
for i=2:3
    A2=A*(A1-C(i-1)*eye(3,3));
    printf('\n\n\nA%i=',i)
    disp(A2);
    C(i)=0;
    for j=1:3
        for k=1:3
            if(j==k)
                C(i)=C(i)+A2(j,k)/i
            end
        end
    end
    printf('\nC%i=',i)
    disp(C(i))
    A1=A2;
end
printf('\n\n\nTherefore the characteristic polynomial is:\n 3    2\nx - %ix - %ix %i = 0',C(1),C(2),C(3))

//verification
printf('\n\nVerification:')
s=poly(0,"s");
p=poly(A,'x');
A=A-eye(3,3)*%s;
disp(p,'=',A)
