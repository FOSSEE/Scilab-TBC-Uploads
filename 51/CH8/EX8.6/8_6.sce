clc;
clear;
A=[22 28 35 35 4 4 10 18 22];
V=[36.4 28.6 22.9 22.9 200 200 80 44.4 36.4];
//minimum area is at location 5, hence max velocity is at 5
c5=(1.4**1716*(460+59))^0.5;//ft/sec
Ma5=V(5)/c5;
//applying energy equation between locations  1 and 9
//hL=hp=(p1-p9)/sw=pdiff/sw
//Pa=sw*Q*hp=sw*A(5)*V(5)*hL
KLcorner=0.2;
KLdif=0.6;
KLscr=4;
hL=((KLcorner*(((V(7))^2)+((V(8))^2)+((V(2))^2)+((V(3))^2))) + (KLdif*(((V(6))^2))) + (KLcorner*((V(5))^2)) + (KLscr*((V(4))^2)))/(2*32.2);//ft
Pa=0.0765*A(5)*V(5)*hL/550;//hp
pdiff=0.0765*hL/144;//psi
disp("psi",pdiff,"The value of (p1-p9)=")
disp("hp",Pa,"The horsepower supplied to the fluid by the fan=")
v=50:300;
count=1;
for i=50:300
   power(count)=0.0765*((((KLcorner*((A(5)*i/A(7))^2)+((A(5)*i/(A(8)))^2)+((A(5)*i/A(2))^2)+((A(5)*i/A(3))^2))) + (KLdif*(((A(5)*i/A(6))^2))) + (KLcorner*((i)^2)) + (KLscr*((A(5)*i/A(4))^2)))/(2*32.2))*(A(5))*i/550;
   count=count+1;
end
plot2d(v,power,rect=[0,0,300,250])
xtitle("Pa vs V5","V5, ft/sec","Pa, hp")
