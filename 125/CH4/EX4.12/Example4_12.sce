//Caption: Program to perform KL transform for the given 2D matrix
//Example4.12
//page 208
clear;
clc;
X = [4,3,5,6;4,2,7,7;5,5,6,7];
[m,n]= size(X);
A = [];
E = [];
for i =1:n
    A = A+X(:,i);
    E = E+X(:,i)*X(:,i)';
end
mx = A/n;   //mean matrix
E = E/n;        
C = E - mx*mx';//covariance matrix C = E[xx']-mx*mx'
[V,D] = spec(C); //eigen values and eigen vectors
d = diag(D); //diagonal elements od eigen values
[d,i] = gsort(d); //sorting the elements of D in descending order
for j = 1:length(d)
    T(:,j)= V(:,i(j));
end
T =T'
disp(d,'Eigen Values are U = ')
disp(T,'The eigen vector matrix T =')
disp(T,'The KL tranform basis is =')
//KL transform
for i = 1:n
    Y(:,i)= T*X(:,i);
end
disp(Y,'KL transformation of the input matrix Y =')
//Reconstruction
for i = 1:n
    x(:,i)= T'*Y(:,i);
end
disp(x,'Reconstruct matrix of the given sample matrix X =')
//Result
// Eigen Values are U =    
//    6.1963372  
//    0.2147417  
//    0.0264211  
// The eigen vector matrix T =   
//    0.4384533    0.8471005    0.3002988  
//    0.4460381  - 0.4951684    0.7455591  
//  - 0.7802620    0.1929481    0.5949473  
// The KL tranform basis is =   
//    0.4384533    0.8471005    0.3002988  
//    0.4460381  - 0.4951684    0.7455591  
//  - 0.7802620    0.1929481    0.5949473  
// KL transformation of the input matrix Y =   
//    6.6437095    4.5110551    9.9237632    10.662515  
//    3.5312743    4.0755729    3.2373664    4.4289635  
//    0.6254808    1.0198466    1.0190104    0.8336957  
// Reconstruct matrix of the given sample matrix x =   
//    4.    3.    5.    6.  
//    4.    2.    7.    7.  
//    5.    5.    6.    7.  