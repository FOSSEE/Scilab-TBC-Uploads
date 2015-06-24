//to find the accuracy as a percentage of reading and percentage of full scale
// example 12-1 in page 355
clc;
// Data given
r=[10 50];//scale readings
c=[-0.5 1.7];// respective correction
f=100;//full scale reading
//calculation
for n=1:2
    pr=c(n)*100/r(n);// accuracy as a percentage of reading
    pf=c(n)*100/f;//accuracy as a percentage of full scale
    printf("accuracy as a percentage of reading for scale reading %d= %.1f percent\n",r(n),pr);
    printf("accuracy as a percentage of full scale= %.1f percent\n",pf);
end
//result
//accuracy as a percentage of reading for scale reading 10= -5.0
//accuracy as a percentage of full scale= -0.5
//accuracy as a percentage of reading for scale reading 50= 3.4
//accuracy as a percentage of full scale= 1.7