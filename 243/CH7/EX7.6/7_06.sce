//Example No. 7_06
//Cholesky's Factorisation
//Pg No. 242

clear ; close ; clc ;

A = [ 1 2 3 ; 2 8 22  ; 3 22 82 ];
[n,n] = size(A);

for i = 1:n
    for j = 1:n
        if i == j then
            U(i,i) = A(i,i)
            for k = 1:i-1
                U(i,i) = U(i,i)-U(k,i)^2 ; 
            end
            U(i,i) = sqrt(U(i,i));
         elseif i < j
             U(i,j) = A(i,j)
             for k = 1:i-1
                 U(i,j) = U(i,j) - U(k,i)*U(k,j);
             end
             U(i,j) = U(i,j)/U(i,i)
        end
    end
end
disp(U)