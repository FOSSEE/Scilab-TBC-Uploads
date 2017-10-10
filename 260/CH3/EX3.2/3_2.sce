//Eg-3.2
//pg-69

clear
clc

 
 // Matrices A and B (AX=B)  
 a=[1 1 -1;1 2 -2;-2 1 1];
 [n,n]=size(a);
 b=[1;0;1];
 
 //Augumented matrix of A and B
 auga=[a b];
 
 //Algorithm of Naive gauss elimination
 //Forward elimination 
 for k=1:n-1
        for i=(k+1):n
            factr=auga(i,k)/auga(k,k);
            auga(i,:)=auga(i,:)-factr*auga(k,:);
        end
 end
    
 //Initializing X    
    X=zeros(n,1);
    
 //Backward substitution
    X(n)=auga(n,n+1)/auga(n,n);
    for i=(n-1):-1:1
        summ=auga(i,n+1);
        for j=(i+1):n
            summ=summ-auga(i,j)*X(j);
        end
        X(i)=summ/auga(i,i);
    end
 //Displaying Solution 
 disp(X(1),"x0=")
 disp(X(2),"x1=")
 disp(X(3),"x2=")
 
    