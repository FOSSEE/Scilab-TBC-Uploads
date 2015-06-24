//ques3
clear
clc
disp('See figure in question');
disp('To find the initial values of u1 u2 u3 u4 we assume u4=0');
disp('u1=1/4*(1000+0+1000+2000)=1000');
u1=1000;
disp('u2=1/4(1000+500+1000+500)=625');
u2=625;
disp('u3=1/4*(2000+0+1000+500)=875');
u3=875;
disp('u4=1/4(875+0+625+0)=375');
u4=375;
disp(u1,u2,u3,u4)
disp('Iterations : ');
//n=input('Input the number of iterations required : ');
for i=1:6
u11=1/4*(2000+u2+1000+u3);
u22=1/4*(u11+500+1000+u4);
u33=1/4*(2000+u4+u11+500);
u44=1/4*(u33+0+u22+0);
disp(' ');
disp(u44,u33,u22,u11);
u1=u11;
u2=u22;
u4=u44;
u3=u33;
end