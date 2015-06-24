//Example 11.18

clear;
clc;

printf("\tExample 11.18\n");

R=[1 2 5 10];
Rm=0.83;

nm=8.5-1;

//X are points on X-axis of graph
for i=1:4
    X(i)=(R(i)-Rm)/(R(i)+1);
end

//Values at Y-axis for corresponding values of X-axis in graph are given by
Y=[0.55 0.32 0.15 0.08];

//where Y=(n+1)-(nm+1)/(n+2)


for i=1:4
    n=poly([0],'x');
    N(i)=roots(((n+1)-(nm+1))-(Y(i)*(n+2)));
end

printf("\nThe values of R and n are\n");
for i=1:4
    printf("\n\t%d \t %.2f",R(i),N(i));
end

printf("\n\nThe change in R and n can be seen as above\n");

//End