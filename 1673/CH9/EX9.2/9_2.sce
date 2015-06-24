//solution of laplace equation by jacobi method,gauss-seidel method and SOR method
//example 9.2
//page 351
clc;clear;close;
u1=0.25;u2=0.25;u3=0.5;u4=0.5;//initial values
printf('jacobis iteration process\n\n')
printf('u1\t     u2\t     u3\t     u4\t \n\n')
printf('%f\t     %f\t     %f\t     %f\t  \n',u1,u2,u3,u4)
for i=1:7
    u11=(0+u2+0+u4)/4
    u22=(u1+0+0+u3)/4;
    u33=(1+u2+0+u4)/4;
    u44=(1+0+u3+u1)/4;
    u1=u11;u2=u22;u3=u33;u4=u44;
printf('%f\t     %f\t     %f\t     %f\t  \n',u11,u22,u33,u44)    
end
printf(' gauss seidel process\n\n');
u1=0.25;u2=0.3125;u3=0.5625;u4=0.46875;//initial values
printf('u1\t     u2\t     u3\t     u4\t \n\n')
printf('%f\t     %f\t     %f\t     %f\t  \n',u1,u2,u3,u4)
for i=1:4
    u1=(0+u2+0+u4)/4
    u2=(u1+0+0+u3)/4;
    u3=(1+u2+0+u4)/4;
    u4=(1+0+u3+u1)/4;
    printf('%f\t     %f\t     %f\t     %f\t  \n',u1,u2,u3,u4)    
end
printf('u1\t     u2\t     u3\t     u4\t \n\n')
printf('%f\t     %f\t     %f\t     %f\t  \n',u1,u2,u3,u4)
