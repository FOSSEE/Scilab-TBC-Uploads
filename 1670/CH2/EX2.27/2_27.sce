//Example 2.27
//Bairstow Method
//Page no. 48
clc;clear;close;
deff('y=f(x,p,q)','y=x^4+5*x^3+p*x^2-5*x-9')
n=4;
a=[1,5,3,-5,-9];
p0=a(3);q0=a(4);
b(1)=0;b(2)=1;c(1)=0;c(2)=1;
for j=1:4
    for i=1:5
    printf('\t\t%i',a(i))
end
       for k=3:6
           b(k)=a(k-1)-p0*b(k-1)-q0*b(k-2)
           c(k)=b(k)-p0*c(k-1)-q0*c(k-2)
       end
      

printf('\n  %.4f\t',-p0);
for i=1:4
    printf('\t\t%.4f',-p0*b(i+1))
end
printf('\n  %.4f\t\t\t',-q0);
for i=1:3
    printf('\t\t%.4f',-q0*b(i+1))
end
printf('\n------------------------------------------------------------------------------------------\n')
for i=1:5
    printf('\t\t%.2f=b%i',b(i+1),i-1)
end
printf('\n  %.4f\t',-p0);
for i=1:3
    printf('\t\t%.4f',-p0*c(i+1))
end
printf('\n  %.4f\t\t\t',-q0);
for i=1:2
    printf('\t\t%.4f',-q0*c(i+1))
end
printf('\n------------------------------------------------------------------------------------------\n')
for i=1:4
    printf('\t\t%.2f=c%i',c(i+1),i-1)
end
printf('\n\n')
cb=c(n+1)-b(n+1);
      dp=-(b(n+2)*c(n-1)-b(n+1)*c(n))/(c(n)^2-cb*c(n-1))
      dq=-(b(n+1)*cb-b(n+2)*c(n))/(c(n)^2-cb*c(n-1))
     p0=p0+dp;
     q0=q0+dq;
     printf('\n dp = %.6f\t\tdq = %.6f\n p%i = %.6f\t\tq%i = %.6f\n\n\n',dp,dq,j,p0,j,q0);
end