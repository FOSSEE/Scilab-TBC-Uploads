clc
disp('probability of no success=8/27')
disp('probability of a success=1/3')
disp('probability of one success=4/9')
disp('probability of two successes=2/9')
disp('probability of three successes=2/9')
A=[0 1 2 3;8/27 4/9 2/9 1/27]
disp('mean=sum of i*pi=')
A(1,1)*A(2,1)+A(1,2)*A(2,2)+A(1,4)*A(2,4)+A(1,3)*A(2,3)
disp('sum of i*pi^2=')
A(1,1)^2*A(2,1)+A(1,2)^2*A(2,2)+A(1,4)^2*A(2,4)+A(1,3)^2*A(2,3)
disp('variance=(sum of i*pi^2)-1=')
A(1,1)^2*A(2,1)+A(1,2)^2*A(2,2)+A(1,4)^2*A(2,4)+A(1,3)^2*A(2,3)-1
