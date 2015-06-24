//Example 11.7
//Jacobi's Method
//Page no. 355
clc;close;clear;

A=[1,1,1/2;1,1,1/4;1/2,1/4,2];
C=A;
V=[sqrt(2),0,1/2;sqrt(2),0,1/4;3/(4*sqrt(2)),-1/(4*sqrt(2)),2]
S=eye(3,3)
disp(A,"A =")
VI=0;
for i=1:3
    for j=1:3
        if(i~=j)
            VI=VI+A(i,j)^2                          //initial off diag norm
        end
    end
end
VI=sqrt(VI);
VF=VI*10^-7;       //final threshold
V1=VI/3;
o=poly(0,"o");
for i=1:3
for q=2:3
    for p=q-1:-1:1
        if(A(p,q)>V1)
            a=-A(p,q);
            b=(A(p,p)-A(q,q))/2
            if(b~=0)
                w=b*abs(1/b)*(a/sqrt(a^2+b^2));
            else
                w=(a/sqrt(a^2+b^2));
            end
            sin0=w/sqrt(2*(1+sqrt(1-w^2)));
            cos0=sqrt(1-sin0^2)
        end
        B(p,p)=A(p,p)*cos0^2+A(q,q)*sin0^2-2*A(p,q)*sin0*cos0
            B(q,q)=A(p,p)*sin0^2+A(q,q)*cos0^2+2*A(p,q)*sin0*cos0
            B(p,q)=(A(p,p)-A(q,q))*sin0*cos0+A(p,q)*(cos0^2-sin0^2)
            S(i,i)=S(i,i)
            S(i,p)=S(i,p)*cos0-S(i,q)*sin0
            S(i,q)=S(i,p)*sin0+S(i,q)*cos0
            
    end
end
end
disp(B,"B =")
disp(S,"S =")
printf('\n\n\nComputation error in the solution provided by book')