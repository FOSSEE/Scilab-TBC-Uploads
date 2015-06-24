clc;
clear;
//A=b*y
//p=b+2*y
//Q=K*A*(Rh^(2/3))*(S0^0.5)/n
//dA/dy=0
//from the above, we get
aspratio=2;//asp ratio=aspect ratio=b/y
disp(aspratio,"The aspect ratio=")
asprat=0.5:0.01:5;
count=1;
for  i=0.5:0.01:5
    Qrat(count)=(((2*sqrt(1/2))+(sqrt(2)))/((2*sqrt(1/i))+(sqrt(i))))^(2/3);
    count=count+1;
end
plot2d(asprat,Qrat,rect=[0,0.8,5,1.05])
xtitle("Q/Qmax vs b/y","b/y","Q/Qmax")

