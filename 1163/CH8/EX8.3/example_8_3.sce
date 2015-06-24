clear;
clc;
disp("--------------Example 8.3---------------")
N=200; //input lines
n=20; // lines in a group
k=4; //number of crossbars in the middle stage
crossbars1=N/n; // 1st stage
crossbars2=k; // 2nd stage
crossbars3=N/n; // 3rd stage
size1a=n; // size of a crossbar in 1st stage
size1b=k;
size2=N/n; // size of a crossbar in 2nd stage
size3a=k; // size of a crossbar in 3rd stage
size3b=n;
total_crosspoints= 2*k*N + k*((N/n)^2); //2kN + k(N/n)^2
singlestage=40000;
p=(total_crosspoints/singlestage)*100;
// display result
printf("\nIn the first stage there are %d crossbars, each of size %d x %d.\n",crossbars1,size1a,size1b);
printf("\nIn the second stage there are %d crossbars, each of size %d x %d.\n",crossbars2,size2,size2);
printf("\nIn the third stage there are %d crossbars, each of size %d x %d.\n",crossbars3,size3a,size3b);
printf("\nThe total number of crosspoints is %d. This is %d percent of the number of crosspoints in a single stage switch.",total_crosspoints,p);
