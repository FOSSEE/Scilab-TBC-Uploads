clc;
clear;
w=100;//ft
y1=0.6;//ft
V1=18;//ft/sec
Fr1=V1/(32.2*y1)^0.5;
disp(Fr1,"The Froude number before the jump=")
yratio=0.5*(-1+(1+(8*(Fr1^2)))^0.5);//where yratio=y2/y1
y2=y1*yratio;//ft
disp("ft",y2,"The depth after the jump=")
//Q1=Q2, hence
V2=(y1*V1)/y2;//ft/sec
Fr2=V2/(32.2*y2)^0.5;
disp(Fr2,"The froude number after the jump=")
Q=w*y1*V1;//(ft^3)/sec
hL=(y1+(V1*V1/(32.2*2)))-(y2+(V2*V2/(2*32.2)));//ft
Pd=62.4*hL*Q/550;//hp
disp("hp",Pd,"Power dissipated within the jump=")
depth1=0.4:0.01:1.53;
count=1;
for i=0.4:0.01:1.53
    power(count)=62.4*(((i+((Q/(i*w))^2)/(32.2*2)))-((i*(0.5*(-1+(1+(8*(((Q/(i*w))/(32.2*i)^0.5)^2)))^0.5)))+((((i*(Q/(i*w)))/(i*(0.5*(-1+(1+(8*(((Q/(i*w))/(32.2*i)^0.5)^2)))^0.5))))^2)/(2*32.2))))*Q/550;
    count=count+1;
end
plot2d(depth1,power,rect=[0,0,1.6,1000])
xtitle("Pa vs y1","y1, ft","Pa, hp")
xclick(1);
clf();
y=0.5:0.01:4;
n=1;
for i=0.5:0.01:4
    E(n)=(i+(((Q/w)^2)/(2*32.2*i*i)));
    n=n+1;
end
plot2d(E,y,rect=[0,0,6,4])
xtitle("y vs E","E,ft","y,ft")