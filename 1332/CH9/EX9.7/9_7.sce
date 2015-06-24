//Example 9.7
//Givens QR Method
//Page no. 303
clc;clear;close;

A=[4,2,1;2,5,-2;1,-2,7]
deff('y=c(i,j)','y=A(j,j)/sqrt((A(i,j)^2+A(j,j)^2))')
deff('y=s(i,j)','y=A(i,j)/sqrt((A(i,j)^2+A(j,j)^2))')
disp(A,'A=')
R=A;Q=eye(3,3);
m=1;
for j=1:2
    for i=j+1:3
        for k=1:3             //C matrix evaluation
            for l=1:3
                if(k==l)
                    if(k==i | k==j)
                        C(k,l)=c(i,j)
                    else
                        C(k,l)=1
                    end
                end
                if(k>l)
                    if(k==i & l==j)
                        C(k,l)=-1*s(i,j)
                    else
                        C(k,l)=0
                    end
                end
                if(k<l)
                    if(k==j & l==i)
                        C(k,l)=s(i,j)
                    else
                        C(k,l)=0
                    end
                end
            end
        end
        printf('\n\n Iteration %i',m)
        m=m+1
        disp(C,'C=');
        R=C*R;
        Q=Q*C';
        disp(Q,'Q=',R,'R=')
    end
end
disp(Q*R,'Q*R=A=')            //verification