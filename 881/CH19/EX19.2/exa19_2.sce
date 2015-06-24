clc;
//Example 19.2
//Page No 752


//solution

Asys=1520;
Acell=4;
n=1140;
j=2;
i=3;

//(a)

disp("(a)Number of cells in a cluster, N ");

N=(i^2)+(i*j)+(j^2);

disp(N,"N = ");

//(b)

disp("(b)Number of clusters in the systems = area of the system / area of each cluster");

ac=N*Acell;

N1=(Asys/ac);

disp(N1,"Number of clusters = ");

//(c)

disp('Km^2',ac,"(c)Area of each celler cluster  = ");

//(d)

sc=N1*n;

disp('channels',sc,"(d)System capacity with frequency reuse = number of cluster X number of channels without frequency reuse, i.e.");

//(e)

disp("(e)Number of channels allocated to each cell, ");

c=(Asys/Acell);

disp(c,"(i)without frequency reuse = ");

C=(n/N);

disp(C,"(ii)With frequency reuse = ");

