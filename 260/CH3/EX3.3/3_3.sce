//Eg-3.3
//pg-71

clear
clc

// Matrix dimensions for a  3*3 coefficient matrix  
 n=3;
 
 //First pass
 k=0;
 
 //Number of divisions per pass i.e for a particular value of 'k'
 ndiv=n-k-1;
 
 //Number of multiplications
 nmul=(n-k)*(n-k-1);
 
 //Total number of multiplications and divisions
 ntot=nmul+ndiv;
 
 //Displaying result
disp("total number of divisions and multiplications from formulae derived")
disp(ntot)

//Verifying result from example 3.2 by taking k=1(first pass)
// Matrices A and B (AX=B)  
 a=[1 1 -1;1 2 -2;-2 1 1];
 [n,n]=size(a);
 b=[1;0;1];
 
 //Augumented matrix of A and B
 auga=[a b];
 
 //initialising nm(no of multiplications),nd(no. of divisions)
nd=0;
nm=0;
 
 //Forward elimination 
 for k=1//only first pass is considered  
        for i=(k+1):n
            factr=auga(i,k)/auga(k,k);
            nd=nd+1;
            auga(i,:)=auga(i,:)-factr*auga(k,:);
            nm=nm+3;//since each row has 3 elements of A,hence 3 multiplications
        end
 end
 
 //Total number of divisions and multiplications
 nt=nd+nm;
 
 //Verifying result
 disp("total number of divisions and multiplications from code of example 3.2")
 disp(nt)
 disp("both are same")