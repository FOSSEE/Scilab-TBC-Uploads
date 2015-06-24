clc;
clear;
//determines the row and column multiplicity of a mtraix
//m=input("enter the number of variables in the function=");
m=4;
for i=1:m
    for j=1:m
        x(i,j)=0;
    end
end
//k='y';
//disp("Enter the cells index whose values are 1 in the matrix representing your function");
//while(k~='n')
//    i=input("x index =");
//    j=input("y index =");
//    x(i,j)=1;
//    k=input("If you want to enter more enter y(in quotes) else n(in quotes) :");
//end
x=[1 0 1 1;
   0 0 1 0;
   0 1 1 1;
   1 1 0 1];
l=0;
//checks every row and find the max no of ones in a row.
for i=1:m
    k=0;
    for j=1:m
        if(x(i,j)==1)
            k=k+1;
        end
    end
    if(k>l)
       l=k;
    end
end
disp(l,"Row multiplicity =");
l=0;
//checks every column and find the max no of ones in a column.
for j=1:m
    k=0;
    for i=1:m
        if(x(i,j)==1)
            k=k+1;
        end
    end
    if(k>l)
       l=k;
    end
end
disp(l,"Column multiplicity =");