//Eg-3.1
//pg-67

clear
clc
 
 // Matrices A and B from set of equations
for i=1:3
    if i==1 then
    a=[1 1 -1;1 2 -0.5;1.5 1 1];
    b=[5;-1;2];
    elseif i==2 then
    a=[-1 2.5 3.5;-1 1 2;.5 1 .5];
    b=[3;1;1.5];
    elseif i==3 then
    a=[1 2 0;1 3 0;2 5 0];
    b=[3;2.5;1.6];
end
//size of A
    [n,n]=size(a);
//Augumented matrix    
    auga=[a b];
//Use of Inbuilt rank function to determine rank of A and AB
    rank_a=rank(a);
    rank_auga=rank(auga);
//Comparing ranks of A,AB,n and determining the type of solution    
    if rank_a==rank_auga&rank_a==n then
        disp("There exists a Unique Solution")
        disp(inv(a)*b,"and the solution =")
    elseif rank_a==rank_auga&rank_a<n then
        printf('\nInfinite solutions exist for the given set of equations\n\n')
    elseif rank_a<rank_auga then
        printf('\nNo solution exists for the given set of equations\n')
    end
    end
    