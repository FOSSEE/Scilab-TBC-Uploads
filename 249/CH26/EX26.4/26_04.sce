clear
clc
t1=1;//hr
//t=k*(1/CAo)
//For equal stoichiometric feed XA=XB=0.9
//CAf/CAo=0.1
t2=t1/0.1;
//finding t/t_avg which gives XB=0.9 ie 1-XB=0.1
 for a=0:0.0001:1;
     //x=1-XB
x=(1/4)*(a)-((1/20)*(a)^2)+((1/120)*(a)^3);
if x >0.099 & x<0.1005
    r=a;
end
end
FBo=1;//tons/hr
t_avg=t2/r;
W=t_avg*FBo;
printf("\n The needed weight of bed is %f",W)
printf("tons")