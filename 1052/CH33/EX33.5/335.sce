clc;
//Example 33.5 page no 527
printf("Example 33.5 page no 527\n\n");
//an artery branches into two smaller equal area arteries so that velocity is same
//because q1=q2,volumetric flow rate
//q1=q2=q/2
//because s1=s2,cross sectional area
//s1=s2=s/2
//let the values 
q=1//flow rate at inlet artery 
q1=q/2//flow rate at outlet artery
s=1//area of inlet artery
s1=s/2//area of outlet artery
//v=q/s
D_r=sqrt(q/q1)//ratio of diameters
printf("\n ratio of diameters D_r=%f ",D_r);

