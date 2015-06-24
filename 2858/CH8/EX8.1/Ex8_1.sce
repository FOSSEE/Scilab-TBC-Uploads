//example 8.1
clc; funcprot(0);
H1=6*tan(10*%pi/180);
H2=18;
H3=2.75;
Gamma1=117;
Ka=0.294;//from table
H=H1+H2+H3;
Pa=1/2*Gamma1*H^2*Ka/1000;
Pr=Pa*sin(10*%pi/180);
Ph=Pa*cos(10*%pi/180);
Mo=Ph*H/3;
Sum=0;//sigma Mr
S=[1, 2, 3, 4, 5];//section
W=[4.05, 1.35, 5.156, 13.01, 1.42];//weight
MA=[5.75, 4.67, 6.25, 9.5, 12.5, 12.5];//Moment Arm
printf("Section Weight(kip/ft) Moment Arm(ft) Moment (kip-ft/ft)\n");
for i=1:5
    M(i)=W(i)*MA(i);
    Sum=Sum+M(i);
    printf("%.2f\t\t %.2f\t\t %.2f\t %.2f\n",S(i),W(i),MA(i),M(i));
end
FSO=Sum/Mo;
if FSO>2 then
    printf("safe in overturning with FS=%.2f\n",FSO)
end
//for sliding
phi2=18*%pi/180;
V=24.986;
B=12.5;
c2=0.9;
FSS=(V*tan(2/3*phi2)+B*2/3*c2)/Ph;
if FSS>2 then
    printf("safe in sliding with FS=%.2f\n",FSS)
end
//for bearing
e=B/2-(Sum-Mo)/V;
qtoe=V/B*(1+6*e/B);
Nc=13.1;
Nq=5.26;
Ny=4.07;
D=0.107;
Gamma2=4;
B1=B-2*e;//Bdash
q=Gamma2*D
Fcd=1+0.4*D/B1;
Fqd=1+2*tan(phi2)*(1-sin(phi2))^2*(D/B1);
Fyd=1;
zi=atan(Ph/V);
Fci=(1-zi/%pi*2)^2;
Fqi=Fci;
Fyi=round((1-zi/phi2)^2);
qu=c2*Nc*Fcd*Fci+q*Nq*Fqd*Fqi+1/2*Gamma2*B1*Fyd*Fyi;
FSB=qu/qtoe;
if FSB>3 then
    printf("safe in bearing with FS=%.2f\n\n",FSB)
end
disp("slight changes due to round off error")

