clc;
clear;
exec("C:\Program Files\scilab-5.3.0\bin\TCP\8_3data.sci");
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