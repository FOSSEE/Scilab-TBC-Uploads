//Example No. 7_05
//DoLittle LU Decomposition
//Pg No. 234

clear ; close ; clc ;

A = [ 3  2  1  ;  2  3  2  ;  1  2  3  ];
B = [ 10  ;  14  ;  14  ];
[n , n] = size(A);

for i = 2:n
    U(1,:) = A(1,:);
    L(i,i) = 1 ;
    if i ~= 1 then
         L(i,1) = A(i,1)/U(1,1); 
    end  
end

for j = 2:n
    for i = 2:n
        
        if i <= j then
            U(i,j) = A(i,j);
            for k = 1:i-1
                U(i,j) = U(i,j) - L(i,k)*U(k,j);
            end
            printf('\nU(%i,%i) = %f \n',i,j,U(i,j))
        
        else
            L(i,j) = A(i,j)
            for k = 1:j-1
                L(i,j) = L(i,j) - L(i,k)*U(k,j);
            end
            L(i,j) = L(i,j)/U(j,j)  ;
            printf('\n L(%i,%i) = %f \n',i,j,L(i,j))
        end
    end
end
disp(U,'U = ')
disp(L,'L = ')

//Forward Substitution
for i = 1:n
    z(i,1) = B(i,1);
    for j = 1:i-1
        z(i,1) = z(i,1) - L(i,j)*z(j,1);        
    end
    printf('\n z(%i) = %f \n',i,z(i,1))
end

//Back Substitution
for i = n : -1 : 1
    x(i,1) = z(i,1);
    for j = n : -1 : i+1
        x(i,1) = x(i,1) - U(i,j)*x(j,1);
    end
    x(i,1) = x(i,1)/U(i,i);
    printf('\n x(%i) = %f \n',i,x(i,1))
end