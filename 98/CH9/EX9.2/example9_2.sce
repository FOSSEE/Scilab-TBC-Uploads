//Chapter 9
//Example 9_2
//PAge 214

clear;clc;

d=300;
r=1;
mr1=1;
mr2=100;

loop_l=(1e-7)*(mr1+4*log(d/r));
loop_ls=(1e-7)*(mr2+4*log(d/r));


printf("(i) With copper conductors mr=1 \n Loop indictance per meter = %.2f*10^-7 H \n\n", loop_l*1e7 );
printf("Loop indictance per km = %.3f mH \n\n", loop_l*1e6 );

printf("(ii) With steel conductors mr=100 \n Loop indictance per meter = %.2f*10^-7 H \n\n", loop_ls*1e7 );
printf("Loop indictance per km = %.3f mH \n\n", loop_ls*1e6 );
