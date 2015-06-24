clc;
clear;
T=[60 80 100 120 140 160];//degree F
d=[2.07 2.06 2.05 2.04 2.03 2.02];//(slugs/(ft^3))
vis=[0.04 0.019 0.0038 0.00044 0.000092 0.000023];//lb*sec/(ft^2)
Q=0.5;//(ft^3)/sec
T1=100;//degree F
l=6;//ft
D=3;//in
//Q=K*pdiff; where pdiff=p1-p2
//hence K=%pi*(D^4)/(128*vis*l)
count=1;
for i=1:6
    K(i)=(%pi*((D/12)^4))/(128*vis(i)*l);
end
plot2d(T,K,logflag='nl')
xtitle("K vs T","T, degree F","K, (ft^5)/(lb.sec)")
pdiff=(128*Q*vis(3)*l)/(%pi*((D/12)^4));//when temperature is 100 degree F
disp("lb/(ft^2)",pdiff,"The pressure drop for the given Q and T =")
V=Q/(%pi*((D/12)^2)/4);//ft/sec
Re=d(3)*V*(D/12)/vis(3);
disp("hence the flow is laminar",Re,"The reynolds number=")
stress=pdiff*(D/12)/(4*l);//lb/(ft^2)
disp("lb/(ft^2)",stress,"The wall stress for the given Q and T =")
Fp=(%pi/4)*((D/12)^2)*pdiff;//lb
Fv=(2*%pi)*((D/12)/2)*l*stress;//lb
disp("lb",Fp,"The net pressure force =")
disp("lb",Fv,"The net viscous/shear force =")