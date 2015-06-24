function [X]=jacobiiteration(A,n,N,X,b)
    L=A;
    U=A;
    D=A;
    for i=1:1:n
        for j=1:1:n
            if j>i then L(i,j)=0;
                D(i,j)=0;
            end
            if i>j then U(i,j)=0;
                D(i,j)=0;
            end
            if i==j  then L(i,j)=0;
                U(i,j)=0;
            end
        end
       
    end
    for k=1:1:N
        X=-D^-1*(L+U)*X+D^-1*(b);
    end
    
endfunction