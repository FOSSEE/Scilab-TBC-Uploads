//Example 11.5
//Inverse Power Method
//Page no. 347
clc;close;clear;

A=[7,6,-3;-12,-20,24;-6,-12,16];
e=10^-6;
X=[1;1;1];
B=0;
Y=[0;0;0]
a=0;l=0;
for i=1:2
    printf('When a=%i\n',a);
    C=A-a*eye();
    disp(C,"C=")
    C_1=inv(C);
    disp(C_1,"Inverse of C=");
    printf('\n\nItr       lambda                             X')
    printf('\n------------------------------------------------------------------\n')
    for j=1:10
        printf('\n%i        %f           %f     %f      %f',j-1,l,X(1),X(2),X(3));
        Y=C_1*X;
        B=max(Y);
        e1=abs(l-B);
        X=Y/B;
        m=0;
        for k=1:3
            m=m+(Y(k)-X(k))^2;
        end
        e2=sqrt(m);
        er=max(e1,e2);
        if(er<e)
            break
        end
        l=B;
        
    end
    a=-3;
    printf('\n\n\n\n')
end
printf('\n\n\nNote : Computation of Y is wrong given in the book')