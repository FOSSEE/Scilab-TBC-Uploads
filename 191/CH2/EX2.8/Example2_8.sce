//The method used to solve is SOR(Successive over-relaxation) method
//only marginal improvement is possible for this pasticular system since
//Gauss-Seidel iteration itself converges quite rapidly 

clear;
close();
clc;
format('v',7);
x1=[0,0];
x2=[0,0];
x3=[0,0];
w =0.9;
x1(1,2)=x1(1,1)+0.2*w*(6-5*x1(1,1)-2*x2(1,1)+x3(1,1));
x2(1,2)=x2(1,1)+0.16667*w*(4-x1(1,2)-6*x2(1,1)+3*x3(1,1));
x3(1,2)=x3(1,1)+0.25*w*(7-2*x1(1,2)-x2(1,2)-4*x3(1,1));
i=1;
while (abs(x1(1,1)-x1(1,2))>0.5*10^-2 | abs(x2(1,1)-x2(1,2))>0.5*10^-2 | abs(x3(1,1)-x3(1,2))>0.5*10^-2 )
    x1(1,1)=x1(1,2);
    x2(1,1)=x2(1,2);
    x3(1,1)=x3(1,2);
    x1(1,2)=x1(1,1)+0.2*w*(6-5*x1(1,1)-2*x2(1,1)+x3(1,1));
    x2(1,2)=x2(1,1)+0.16667*w*(4-x1(1,2)-6*x2(1,1)+3*x3(1,1));
    x3(1,2)=x3(1,1)+0.25*w*(7-2*x1(1,2)-x2(1,2)-4*x3(1,1));
    i=i+1;
end
disp([x1; x2; x3],'Answers are:')
disp(i,'Number of Iterations :')
