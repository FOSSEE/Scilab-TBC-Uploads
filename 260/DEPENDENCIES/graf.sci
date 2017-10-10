function q = graf(A,eps)
    n = length(A)-1;
    x = poly(0,'x');
    for(i = 1:n)
        X(i) = x^(n+1-i);
    end
    X(n+1) = 1;
    //disp(X)
    //converting this polynomial into standard one where the coefficient of highest order term is 1

A = A/A(1);
p = A*X;

printf('The given polynomial is')
disp(p)
n = length(X)-1;

if(n == 1)
    for(i = 3:4)
        A(1,3) = 0;
        A(1,4) = 0;
    end
end

j = 1;
a(j,1) = A(j,2);
a(j,2) = abs(A(j,3)/A(j,2));
//eps = 0.000001;
err = 1;
printf('\nIteration no.    error        eps\n')
while(err>eps)
    A(j,1) = 1;
    for(i = 2:n+1)
        S = 0;
        for(k = 1:i-1)
            if(i-1+k>n)
                A(j,i+k) = 0;
            end
            S = S+ (-1)^k*A(j,i+k)*A(j,i-k);
        end
        
        A(j+1,i) = (-1)^(i-1)*(A(j,i)^2 + 2*S);
    
    end
    a(j+1,1) = abs(A(j+1,2))^(1/2^j);
    for(i = 3:n+1)
        a(j+1,i-1) = (abs(A(j+1,i)/A(j+1,i-1)))^(1/2^j);
    end
    b = abs(a);
    err = abs((sum(b(j+1,:)) - sum(b(j,:)))/sum(b(j,:)));
    printf('      %d         %f    %f\n',j,err,eps)
    j = j+1;
end
printf('\nThe roots are \n')

for(i = 1:n)
        if( abs(horner(p,a(j,i))) > eps )
            a(j,i) = -a(j,i);
        end
end

for(i = 1:n)
    printf('    %f\n',a(j,i))
end
q = a(j,:);
endfunction