clc;
//Example 33.6
//page no 528
printf("Example 33.6 page no 528\n\n");
//a blood vessel branches into three openings 
//we have to find the velocity in 3 rd opening
a=0.2//cross sectional area of inlet 1,m^2
v=5//velocity inlet 1,mm/s
a1=0.08//area of branch1,m^2
v1=7//velocity in branch2,mm/s
a2=0.025//area of branch,m^2
v2=12//velocity in branch,mm/s
a3=0.031//area of branch,m^2
q=a*v//flow rate at inlet
q1=a1*v1//flow rate at branch 1
q2=a2*v2//flow rate at branch 2
q3=q-q1-q2//flow rate in branch 3
v3=q3/a3//velocity in branch 3
printf("\n velocity v3=%f mm/s",v3);
 
