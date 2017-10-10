//Eg-3.7
//pg-86

clear
clc

 //Matrices A and B
 A=[-0.41 0.58 1 0 0;0.41 0.58 0 1 0;-.82 -.58 0 0 1;.82 .58 0 0 0;-.82 .58 0 0 0];;
 B=[0;3;0;6.25;0];
[n,n]=size(A);

//Permutation,Lower triangular matrix initialisation
P=eye(n);
L=zeros(n,n);

//Algorithm of LU decomposition to find L,U,P and X
//Partial Pivoting 
   for k=1:n-1
        u=k;
        big=abs(A(k,k));
        for t=k+1:n
        dummy=abs(A(t,k));
        if dummy>big//Finidng max absolute element
            big=dummy;
            u=t;//Index of max ansolute element
        end
    end
        if u~=k
        for j=1:n
            dummy=A(u,j);//Interchanging rows of A
            A(u,j)=A(k,j);
            A(k,j)=dummy;

            dummy=L(u,j);//interchanging rows of lowertriangular matrix according to A
            L(u,j)=L(k,j);
            L(k,j)=dummy;
            end
            dummy=B(u);//interchanging rows of B matrix
            B(u)=B(k);
            B(k)=dummy;
        end
    
 //forward elimination to get U and sending corresponding factors to L   
    for i=(k+1):n
            facotr=A(i,k)/A(k,k);
            for j=1:n
                A(i,j)=A(i,j)-facotr*A(k,j);
                U=A;//upper triangular matrix
            end
            for j=k
                L(i,j)=facotr;//factors are transformed to lower triangular matrix
            end
            
        end 
    end
    
 //Lower triangular matrix   
    for s=1:n
            L(s,s)=1;
        end
        
 //Initialisation of D,X       
     D=zeros(n,1);
     X=zeros(n,1);
     
 //Forward Substitution Ld=B..we get d here
      D(1)=B(1)/L(1,1);
                 for i=2:n
        summ=B(i);
        for j=1:i-1
            summ=summ-L(i,j)*D(j);
        end
        D(i)=summ/L(i,i);
    end
    
 //Backward substitution  Ux=B gives X
         X(n)=D(n)/U(n,n);
    for i=(n-1):-1:1
        summ=D(i);
        for j=(i+1):n
            summ=summ-U(i,j)*X(j);
        end
        X(i)=summ/U(i,i);
    end
    
//Displaying results
disp(X(1),"F0=")
disp(X(2),"F1=")
disp(X(3),"F2=")
disp(X(4),"F3=")
disp(X(5),"F4=")
    
    