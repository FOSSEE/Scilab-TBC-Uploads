function L=cholesky (A,n)
    L=zeros(n,n);
    for k=1:1:n
        S=0;
        P=0;
        for j=1:1:k-1
            S=S+(L(k,j)^2);
            P=P+L(i,j)*L(k,j)
        end
        L(k,k)=sqrt(A(k,k)-S);
        for i=k+1:1:n
            L(i,k)=(A(i,k)-P)/L(k,k);
        end
    end

endfunction