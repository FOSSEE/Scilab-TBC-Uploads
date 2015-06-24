//ques28.2
disp('See figure in question');
disp('From symmetry u7=u1 , u8=u2 , u9=u3 , u3=u1 , u6=u4, u9=u7');
disp('u5=1/4*(2000+2000+1000+1000)=1500');
u5=1500;
disp('u1=1/4(0=1500+1000+2000)=1125');
u1=1125;
disp('u2=1/4*(1125+1125+1000+1500)=1188');
u2=1188;
disp('u4=1/4(2000+1500+1125+1125)=1438');
u4=1438;
disp(u1,u2,u4,u5)
disp('Iterations : ');
//n=input('Input the number of iterations required : ');
for i=1:6
u11=1/4*(1000+u2+500+u4);
u22=1/4*(u11+u1+1000+u5);
u44=1/4*(2000+u5+u11+u1);
u55=1/4*(u44+u4+u22+u2);
disp(' ');
disp(u55,u44,u22,u11);
u1=u11;
u2=u22;
u4=u44;
u5=u55;
end