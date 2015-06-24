//Solving the problem using Jacobi method
//the first case in converging and the 2nd is diverging ..... drawback
//of jacobi method
//the ans is correct to 2D place

clear;
close();
clc;
format('v',7);
x1=[0,0];
x2=[0,0];
x3=[0,0];
x1(1,2)=0.2*(6-2*x2(1,1)+x3(1,1));
x2(1,2)=0.16667*(4-x1(1,1)+3*x3(1,1));
x3(1,2)=0.25*(7-2*x1(1,1)-x2(1,1));
i=1;
while (abs(x1(1,1)-x1(1,2))>0.5*10^-2 | abs(x2(1,1)-x2(1,2))>0.5*10^-2 | abs(x3(1,1)-x3(1,2))>0.5*10^-2 )
    x1(1,1)=x1(1,2);
    x2(1,1)=x2(1,2);
    x3(1,1)=x3(1,2);
    x1(1,2)=0.2*(6-2*x2(1,1)+x3(1,1));
    x2(1,2)=0.16667*(4-x1(1,1)+3*x3(1,1));
    x3(1,2)=0.25*(7-2*x1(1,1)-x2(1,1));
    i=i+1;
end
disp([x1; x2; x3],'Answers are :')
disp(i,'Number of Iterations :')


x1=[0,0];
x2=[0,0];
x3=[0,0];
x1(1,2)=4-6*x2(1,1)+3*x3(1,1);
x2(1,2)=0.5*(6-5*x1(1,1)+x3(1,1));
x3(1,2)=0.25*(7-2*x1(1,1)-x2(1,1));
i=1;
while (abs(x1(1,1)-x1(1,2))>0.5*10^-2 | abs(x2(1,1)-x2(1,2))>0.5*10^-2 | abs(x3(1,1)-x3(1,2))>0.5*10^-2 )
    x1(1,1)=x1(1,2);
    x2(1,1)=x2(1,2);
    x3(1,1)=x3(1,2);
    x1(1,2)=(4-6*x2(1,1)+3*x3(1,1));
    x2(1,2)=0.5*(6-5*x1(1,1)+x3(1,1));
    x3(1,2)=0.25*(7-2*x1(1,1)-x2(1,1));
    i=i+1;
end
disp([x1; x2; x3],'Answers are :')
disp(i,'Number of Iterations :')
