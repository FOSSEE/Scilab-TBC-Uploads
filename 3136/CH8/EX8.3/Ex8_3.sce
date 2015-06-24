clear all; clc;

disp("Use the velocity diagram shown in figure 8.2 or 8.4")
disp("We have Vatanß2=Vatanα2-Um")
disp("Or tanß2=tanα2-Um/Va")

tanbeta2=tan(75*%pi/180)-1200/500
printf(" Thus tanß2= %0.2f",tanbeta2)
beta2=((atan(tanbeta2))*180/%pi)
printf("\n Thus ß2= %0.2f",beta2)

disp("Also Vatanß3=Vatanα3+Um")
disp("tanß3=tanα3+Um/Va")
tanbeta3=tan(10*%pi/180)+1200/500
printf(" tanß3= %0.2f",tanbeta3)
beta3=((atan(tanbeta3))*180/%pi)
printf("\n ß3= %0.2f",beta3)

disp("From Cp*deltaT0s=deltaE=Um(Vu2+Vu3)=UmVa(tanα2+tanα3)")
deltaE=1200*500*(tan(75*%pi/180)+tan(10*%pi/180))
printf(" Thus Cp*deltaT0s=deltaE= %g=2.34*10^6 ((ft/s)^2)",deltaE)

deltaT0s=(2.34*(10^6))/(0.24*778*32.2)
disp("deltaT0s=(2.34*(10^6))/(0.24*778*32.2)")
printf(" Thus deltaT0s= %0.2f R which is rounded off to 890R",deltaT0s)

disp("Hence neglecting leakage and mechanical losses , we have shaft power output Ps=mCpdeltaT0s")
Ps=50*2.34*(10^6)/(32.2*550)
printf("\n Hence we have Ps= %0.2f hp wich is rounded off to 6607hp",Ps)

disp("The degree of reaction at the mean radius can be determined from equation 8.5A")
R=(500/(2*1200))*(tan(68.8*%pi/180)-tan(53.1*%pi/180))
printf("\n Thus R = %0.3f",R)

disp("To determine the radii the flow area A2 can be determined from m=rho2*A2*Va. The density rho2 can be determined from p2 and T2 which can be caalculated as follows.")
disp("From Cp*T02=CpT2+V2^2/2 and V2= VA/cosα2")
V2=500/(cos(75*%pi/180))
printf("\n V2= %0.0f ft/s",V2)

T2=2000-(1932^2)/(2*0.24*778*32.2)
printf("\n Thus we have T2= %0.0f degrees Farenheit = 2150R",T2)

disp("From the definition of loss coefficient εe we have Ts2=T2-εsV2^2/(2*Cp)")
Ts2=1690-(0.08*(1932^2))/(2*.24*778*32.2)
printf("\n Ts2= %0.2f degrees Farenheit which is equal to 2125.2R",Ts2)

//Let x= P2/p01
x=(2125.2/2460)^(1.4/0.4)
printf("\n and P2/p01= %0.2f",x)


P2=200*0.60
printf("\n P2= %0.0f psia",P2)

disp("Hence the density can be calculated as rho2=p2/(R*T2)")

rho2=120*144/(53.3*2150)
printf("\n Thus ro2=%0.3f lbm/ft^3",rho2)

A2=50/(0.151*500)
printf("\n A2=m/(rho2*Va)=%0.3f ft^2",A2)

//let y=rt^2-rh^2
y=0.662/%pi
printf("\n rt^2-rh^2=A2/pi=%0.3f",y)

rm=30*1200/(8000*%pi)
printf(" and rm= %0.2f ft",rm)

disp("rt^2+rh^2=2*rm^2=4.09ft^2")
disp("and 1.466ft,rh=1.393ft")
rt=1.466
rh=1.393
b=rt-rh
printf(" b= %0.3f ft=0.88in",b)































