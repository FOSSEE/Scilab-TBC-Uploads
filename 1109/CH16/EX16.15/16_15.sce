clear;
clc;
d1=0;d2=5;d3=10;d4=15;d5=20;Ro=600;
printf("For 0 db loss:\n");
printf("  R1 = 0\n  R2 = infinite\n\n");
n=4;
for i=1:n
    N=10^(5*i/20);
    R2=Ro*(N-1);
    R1=Ro/(N-1);
    printf("\n For %d db loss:\n",5*i);
    printf("  R1=%f\n",round(R1));
    printf("  R2=%f\n",round(R2));
end
