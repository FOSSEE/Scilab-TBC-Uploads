function [U,L]=LandU(A,n)
    U=A
    L=eye(n,n)
    for p=1:1:n-1
        for i=p+1:1:n
            m=A(i,p)/A(p,p);
            L(i,p)=m;
            A(i,:)=A(i,:)-m*A(p,:);
            U=A;
        end
    end
endfunction