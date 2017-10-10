//Eg-3.5
//pg-78

clear
clc

 // Matrices A and B (AX=B)  
 A=[-4 1 0 0 0 1;3 -7 2 0 2 0;0 4 -7 3 0 0;0 0 1 -5 4 0;0 2 0 6 -11 3;3 0 0 0 3 -8];
 [n,n]=size(A);
 B=[-130;0;0;0;0;0];
 
 //Initialising Permutation matrix(which keeps note of column changes in this code) as Identity matrix
 P=eye(n);
 
 //Algorithm of gauss elimination with complete pivoting
 
 //COMPLETE PIVOTING(both rows and columns)
 //loop from 1 to n-1 pivot elements
   for k=1:n-1
        u=k;
        l=k;
        big=abs(A(k,k)); 
 //Obtaining max absolute element and its position/index in column        
        for t=k+1:n      
        dummy=abs(A(t,k));
        if dummy>big
            big=dummy;
            u=t;
        end
    end
 //Obtaining max absolute element and its position/index in row
        for t=k+1:n
            dummy=abs(A(k,t));
            if dummy>big
                big=dummy;
                l=t;
    end
end
//Row and Column interchanges according to index of maximum absolute element obtained
    if l~=k
        for j=1:n//column interchanges
            dummy=A(j,l);
            A(j,l)=A(j,k);
            A(j,k)=dummy;
            temp=P(j,l);//column interchanges are noted with the help of a permutation matrix
            P(j,l)=P(j,k);
            P(j,k)=temp;
        end
    elseif u~=k
        for j=1:n//row interchanges
            dummy=A(u,j);
            A(u,j)=A(k,j);
            A(k,j)=dummy;
        end
            temp=B(u);//B rows are also interchanged according to A row interchanges
            B(u)=B(k);
            B(k)=temp;
        end
        
//Forward Elimination
        for i=(k+1):n
            facotr=A(i,k)/A(k,k);
            for j=1:n
                A(i,j)=A(i,j)-facotr*A(k,j);
            end
            B(i)=B(i)-facotr*B(k);
        end
    end  
      
 //Backward Substitution
    X=zeros(n,1);
    X(n)=B(n)/A(n,n);
    for i=(n-1):-1:1
        summ=B(i);
        for j=(i+1):n
            summ=summ-A(i,j)*X(j);
        end
              X(i)=summ/A(i,i);
    end
 //Column interchanges in A correspond to row interchanges in X which can be cancelled out by multiplying with the permutation matrix defined above 
    X=P*X;
    
 //Result
 v1=X(1);
 v2=X(2);
 v3=X(3);
 v4=X(4);
 v5=X(5);
 v6=X(6);
 
 //Displaying Results
 disp(v1,"v1=")
 disp(v2,"v2=")
 disp(v3,"v3=")
 disp(v4,"v4=")
 disp(v5,"v5=")
 disp(v6,"v6=")
   