//Eg-3.4
//pg-74

clear
clc

 // Matrices A and B (AX=B)...given by 3 sets of material balance equations
 a=[.8 .02 .06;.1 .83 .12;.1 .15 .82];
 [n,n]=size(a);
 b=[50;30;20];
 
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
    
//Resuts
P=X(1);
Q=X(2);
R=X(3);

//Displaying results
disp(P,"P=")
disp(Q,"Q=")
disp(R,"R=")