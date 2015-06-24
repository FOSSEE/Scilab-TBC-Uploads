clc;
clear;
T=60;//degree F
D=0.0625;//ft
Q=0.0267;//(ft^3)/sec
Df=0.5;//in
l1=15;//ft
l2=10;//ft
l3=5;//ft
l4=10;//ft
l5=10;//ft
l6=10;//ft
V1=Q/(%pi*(D^2)/4);//ft/sec
V2=Q/(%pi*((Df/12)^2)/4);//ft/sec
d=1.94;//slugs/ft
vis=2.34/100000;//lb*sec/(ft^2)
Re=d*V1*D/vis;
disp("hence the flow is turbulent",Re,"The reynolds number =")
//applying energy equation between points 1 and 2
//when all head losses are excluded
p1=(d*32.2*(l2+l4))+(0.5*d*((V2^2)-(V1^2)));//lb/(ft^2)
disp("psi",p1/144,"a)The pressure at point 1 when all head losses are neglected=")
//if major losses are included
f=0.0215;
hLmajor=f*(l1+l2+l3+l4+l5+l6)*(V1^2)/(D*2*32.2);
p11=p1+(d*32.2*hLmajor);//lb/(ft^2)
disp("psi",p11/144,"b)The pressure at point 1 when only major head losses are included=")
//if major and minor losses are included
KLelbow=1.5;
KLvalve=10;
KLfaucet=2;
hLminor=(KLvalve+(4*KLelbow)+KLfaucet)*(V1^2)/(2*32.2);
p12=p11+(d*32.2*hLminor);//lb/(ft^2)
disp("psi",p12/144,"c)The pressure at point 1 when both major and minor head losses are included=")
H=(p1/(32.2*1.94))+(V1*V1/(2*32.2));//ft
dist=0:60;
for i=0:15
    press(i+1)=p1/144;
    press1(i+1)=((d*32.2*(l2+l4))+(0.5*d*((V2^2)-(V1^2)))+(d*32.2*(f*(l1+l2+l3+l4+l5+l6-i)*(V1^2)/(D*2*32.2)))+(d*32.2*(KLvalve+(4*KLelbow)+KLfaucet)*(V1^2)/(2*32.2)))/144;
    head(i+1)=H;
    head1(i+1)=((press1(i+1))*144/(32.2*1.94))+((V1^2)/(2*32.2));
end
for i=16:25
    press(i+1)=((d*32.2*((l2+l4)-(i-15)))+(0.5*d*((V2^2)-(V1^2))))/144;
    press1(i+1)=((d*32.2*((l2+l4)-(i-15)))+(0.5*d*((V2^2)-(V1^2)))+(d*32.2*f*(l1+l2+l3+l4+l5+l6-i)*(V1^2)/(D*2*32.2))+(d*32.2*(KLvalve+(3*KLelbow)+KLfaucet)*(V1^2)/(2*32.2)))/144;
    head(i+1)=H;
    head1(i+1)=(press1(i+1)*144/(32.2*1.94))+((V1^2)/(2*32.2))+(i-l1);
end
for i=26:30
    press(i+1)=((d*32.2*((l2+l4)-(25-15)))+(0.5*d*((V2^2)-(V1^2))))/144;
     press1(i+1)=((d*32.2*((l2+l4)-(25-15)))+(0.5*d*((V2^2)-(V1^2)))+(d*32.2*(f*(l1+l2+l3+l4+l5+l6-i)*(V1^2)/(D*2*32.2)))+(d*32.2*(KLvalve+(2*KLelbow)+KLfaucet)*(V1^2)/(2*32.2)))/144;
     head(i+1)=H;
    head1(i+1)=(press1(i+1)*144/(32.2*1.94))+((V1^2)/(2*32.2))+l2;
end
for i=31:40
    press(i+1)=((d*32.2*((l2+l4)-(i-l1-l3)))+(0.5*d*((V2^2)-(V1^2))))/144;
    press1(i+1)=((d*32.2*((l2+l4)-(i-l1-l3)))+(0.5*d*((V2^2)-(V1^2)))+(d*32.2*(f*(l1+l2+l3+l4+l5+l6-i)*(V1^2)/(D*2*32.2)))+(32.2*d*(KLvalve+(KLelbow)+KLfaucet)*(V1^2)/(2*32.2)))/144;
    head(i+1)=H;
    head1(i+1)=(press1(i+1)*144/(32.2*1.94))+((V1^2)/(2*32.2))+(i-(l1+l3));
end
for i=41:50
    press(i+1)=((d*32.2*((l2+l4)-(40-l1-l3)))+(0.5*d*((V2^2)-(V1^2))))/144;
    press1(i+1)=((d*32.2*((l2+l4)-(40-l1-l3)))+(0.5*d*((V2^2)-(V1^2)))+(d*32.2*(f*(l1+l2+l3+l4+l5+l6-i)*(V1^2)/(D*2*32.2)))+(d*32.2*(KLvalve+KLfaucet)*(V1^2)/(2*32.2)))/144;
     head(i+1)=H;
    head1(i+1)=(press1(i+1)*144/(32.2*1.94))+((V1^2)/(2*32.2))+(l2+l4);
end
for i=51:60
    press(i+1)=((d*32.2*((l2+l4)-(40-l1-l3)))+(0.5*d*((V2^2)-(V1^2))))/144;
     press1(i+1)=((d*32.2*((l2+l4)-(40-l1-l3)))+(0.5*d*((V2^2)-(V1^2)))+(d*32.2*(f*(l1+l2+l3+l4+l5+l6-i)*(V1^2)/(D*2*32.2)))+d*32.2*((KLfaucet)*(V1^2)/(2*32.2)))/144;
     head(i+1)=H;
    head1(i+1)=(press1(i+1)*144/(32.2*1.94))+((V1^2)/(2*32.2))+(l2+l4);
end
plot(dist,press,"o-")
plot(dist,press1,"x-")
h1=legend(['without losses';'with losses'])
xtitle("p vs distance long pipe from (1)","distance along pipe from (1), ft","p, psi")
xclick(1);
clf();
plot(dist,head,"o-")
plot(dist,head1,"x-")
h2=legend(['energy line with no losses';'energy line including losses'])
xtitle("H vs distance long pipe from (1)","distance along pipe from (1), ft","H,elevation to energy line, ft")

end
