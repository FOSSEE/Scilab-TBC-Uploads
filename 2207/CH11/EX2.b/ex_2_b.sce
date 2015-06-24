// Example 2(b): power absorbed
clc;
clear;
close;
vsrms=230;//volts
vm=(sqrt(2)*vsrms)/2;//volts
alpha=[45:90];//degree
x=[(45*(%pi/180));(90*(%pi/180))]
for i=1:2
    vldc(i)=(vm/%pi)*(1+cosd(alpha(i)));//
    vlms(i)=vm*((1/%pi)*(%pi-x(i)+(sin(2*x(i)))/2))^(1/2);//
    r1=100;//ohm
end
r1=100;//OHM
pl1=((vlms(1))^2)/r1//W
pl2=((vlms(2))^2)/r1;//W
disp(pl1,"power aborbed is,(W)=")
disp(pl2,"power aborbed is,(W)=")
