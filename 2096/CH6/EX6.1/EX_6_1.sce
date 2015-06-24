//Example 6.1// actual transformer ratio ,phase angle and maximum flux density
clc;
clear;
Np=1;//no. of primary turns
Ns=240;//no. of secondary turns
Is=5;//SECONDARY WINDING CURRENT IN AMPERE
Re=1.2;//external burden in ohms
mmf=96;//magneromotive force in AT
Ac=1200;//CROSS SECTIONAL AREA IN MM sqaure
f=50;//suplly frequency in hertz
Kt=Ns/Np;//turn ratio
Es=Is*Re;//voltage induced in secondary winding
Im= mmf/Np;//magnetising component of current in ampere
Rs=Kt*Is;//reflected secondary winding current in ampere
Ip=sqrt(Rs^2+Im^2);//primary current in ampere
Kact= Ip/Is ;//actual turn ratio
Theta= atand(Im/(Kt*Is));//
Phm= ((Es/(4.44*f*Ns)));//flux in Wb
Bm= Phm/(Ac*10^-6);//maximum flux density in Wb/Meter squre
temp=Theta-floor(Theta)
disp(Kact,"actual transformation ratio is")
disp("the phase angle is "+string(floor(Theta))+" degree and "+string(round(temp*60))+"min");
disp(Bm,"maximum flux density in Wb/meter square")
