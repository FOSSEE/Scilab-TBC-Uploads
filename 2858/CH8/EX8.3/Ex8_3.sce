//example 8.3
clc; funcprot(0);
Msum=0;//sum of moment
Vsum=0;//sum of force
H=15+2.5;//Hdash
phi=30*%pi/180;
Gamma=121;
Ka=(tan(%pi/4-phi/2))^2;
Pa=1/2*Gamma*H^2*Ka/1000;
Ph=Pa;
Mo=Ph*H/3;
AN=[1,2,3,4,5,6];//area number
W=[0.9,3.375,5.906,3.863,4.764,2.723];//weight
MA=[1.783,2.8,5.3,5.15,7.05,9.55];//moment arm

printf("AreaNo Weight(kip/ft) Moment Arm(ft) Moment (kip-ft/ft)\n");
for i=1:6
    M(i)=W(i)*MA(i);
    Vsum=Vsum+W(i);
    Msum=Msum+M(i);
    printf("%.2f\t\t %.2f\t\t %.2f\t %.2f\n",AN(i),W(i),MA(i),M(i));
end
FSO=Msum/Mo;
if FSO>2 then
    printf("safe in overturning with FS=%.2f\n",FSO)
end
//for sliding
phi2=20*%pi/180;
V=Vsum
B=10.3;
c2=1.0;
FSS=(V*tan(2/3*phi2)+B*2/3*c2)/Ph;
printf("safe in sliding with FS=%.2f\n",FSS)
e=B/2-(Msum-Mo)/V;
qtoe=V/B*(1+6*e/B);
disp(qtoe,"soil pressure at toe in kip/ft^2")
qheel=V/B*(1-6*e/B);
disp(qheel,"soil pressure at heel in kip/ft^2")

