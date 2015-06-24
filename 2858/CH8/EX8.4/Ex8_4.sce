//example 8.4
clc; funcprot(0);
Msum=0;//sum of moment
Vsum=0;//sum of force
H=5+1.5;//Hdash
phi=32*%pi/180;
Gamma=18.5;
Ka=0.424;
Pa=1/2*Gamma*H^2*Ka;
Ph=Pa*cos(15*%pi/180+2/3*phi);
Mo=Ph*H/3;
AN=[1,2,3,4,5];//area number
A=[4.36, 3.42, 0.77, 2.8, 2.8];//area
W=[102.81, 80.64, 18.16, 66.02, 93.14];//weight
MA=[2.18, 1.37, 0.98, 1.75, 2.83];//moment arm
printf("AreaNo Area(m^2) Weight(kN/m) Momwnt Arm(m) Moment (kN-m/m)\n");
for i=1:5
    M(i)=W(i)*MA(i);
    Vsum=Vsum+W(i);
    Msum=Msum+M(i);
    printf("%.2f\t\t %.2f\t %.2f\t\t %.2f\t %.2f\n",AN(i),A(i),W(i),MA(i),M(i));
end
FSO=Msum/Mo;
if FSO>2 then
    printf("safe in overturning with FS=%.2f\n",FSO)
end
//for sliding
phi2=24*%pi/180;
V=Vsum
B=3.5;
c2=30;
Pp=1/2*2.37*18*1.5^2+2*30*1.54*1.5;
FSS=(V*tan(2/3*phi2)+B*2/3*c2+Pp)/Ph;
printf("safe in sliding with FS=%.2f\n",FSS)
disp("if Pp is ignored then FS=1.37");
e=B/2-(Msum-Mo)/V;
qtoe=V/B*(1+6*e/B);
disp(qtoe,"soil pressure at toe in kN/m^2")
qheel=V/B*(1-6*e/B);
disp(qheel,"soil pressure at heel in kN/m^2")
disp("there is difference in answer due to rounding off error")

