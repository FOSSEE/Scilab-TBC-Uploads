clear;
clc;
disp("--------------Example 8.4---------------")
N=200; 
n=(N/2)^(0.5); // formula
k=2*n-1; // formula
crossbars_1stage=N/n; // formula
crosspoints_1stage=n*k; // formula
crossbars_2stage=k; // formula
crosspoints_2stage=n*n; // formula
crossbars_3stage=N/n; // formula
crosspoints_3stage=k*n; // formula
total_crosspoints=(crossbars_1stage*crosspoints_1stage)+(crossbars_2stage*crosspoints_2stage)+(crossbars_3stage*crosspoints_3stage); // formula
crosspoints_singlestage=N*N; // formula
p=(total_crosspoints/crosspoints_singlestage)*100; // percentage formula
// display the resut
printf("The value of n is %d and the value of k is %d .\nIn the first stage, there are %d crossbars, each with %d X %d crosspoints.\nIn the second stage, there are %d crossbars, each with %d X %d crosspoints.\nIn the third stage, there are %d crossbars each with %d X %d crosspoints.\nThe total number of crosspoints is %d .If a single-stage switch is used, %d crosspoints are needed.\nThe number of crosspoints in this three-stage switch is %d percent that of a single-stage switch.\nMore points are needed than in single stage . The extra crosspoints are needed to prevent blocking.",n,k,crossbars_1stage,n,k,crossbars_2stage,n,n,crossbars_3stage,k,n,total_crosspoints,crosspoints_singlestage,ceil(p));
