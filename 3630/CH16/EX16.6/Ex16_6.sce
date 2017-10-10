clc;
rf=1000;
r1=1000;
r2=2000;
r3=4000;
v1=[10 0 10];
v2=[0 10 10];
v3=[10 0 10];
for i=1:3
Vout(1,i)=(rf/r1)*v1(1,i)+(rf/r2)*v2(1,i)+(rf/r3)*v3(1,i);
end
disp('V',Vout(1,1),"Vout(1,1)=");
disp('V',Vout(1,2),"Vout(1,2)=");
disp('V',Vout(1,3),"Vout(1,3)=");
