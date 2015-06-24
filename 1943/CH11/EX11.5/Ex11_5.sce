
clc
clear
//Input data
Vbm=360//Blade velocity in m/s
b1=20//Blade angle at inlet in degrees
a2=b1//Angle in degrees
b2=52//Blade angle at exit in degrees
a1=b2//Angle in degrees
R=50//Degree of reaction in percent
dm=0.45//Mean diameter of the blade in m
bh=0.08//Mean blade height in m

//Calculations
Vf=(Vbm/(tand(b2)-tand(b1)))//Velocity in m/s
rt=(dm/2)+(bh/2)//Mean radius in m
Vbt=(Vbm*(rt/(dm/2)))//Velocity in m/s
Vw1m=Vf*tand(a1)//Velocity in m/s
Vw1t=(Vw1m*((dm/2)/rt))//Velocity in m/s
dVw1=(Vf*(tand(b1)+tand(b2))*Vbm)/Vbt//Velocity in m/s
rr=(dm/2)-(bh/2)//Radius in m
Vbr=(Vbm*(rr/(dm/2)))//Velocity in m/s
Vw1r=(Vw1m*((dm/2)/rr))//Velocity in m/s
Vr2=Vf/cosd(b2)//Velocity in m/s
dVwr=((Vw1m+((Vr2*sind(b2))-Vbm))*Vbm)/Vbr//Velocity in m/s
a1r=atand(Vw1r/Vf)//Angle in degrees
a2r=atand((dVwr-Vw1r)/Vf)//Angle in degrees
b1r=atand((Vw1r-Vbr)/Vf)//Angle in degrees
b2r=atand((Vbr+(Vf*tand(a2r)))/Vf)//Angle in degrees
a1t=atand(Vw1t/Vf)//Angle in degrees
a2t=atand((dVw1-Vw1t)/Vf)//Angle in degrees
b1t=atand((Vw1t-Vbt)/Vf)//Angle in degrees
b2t=atand((Vbt+(Vf*tand(a2t)))/Vf)//Angle in degrees
Rt=((Vf*(tand(b2t)-tand(b1t)))/(2*Vbt))*100//Degree of reaction at the tip in percent
Rr=((Vf*(tand(b2r)-tand(b1r)))/(2*Vbr))*100//Degree of reaction at the root in percent

//Output
printf('(a)The flow velocity is %3.0f m/s \n (b) The blade angles at the tip are : \n Fixed blades (root) are %3.2f degrees and %3.2f degrees \n Moving blades (root) are %3.2f degrees and %3.2f degrees \n Fixed blades (tip) are %3.2f degrees and %3.2f degrees \n Moving blades (tip) are %3.2f degrees and %3.2f degrees \n (c) The degree of reaction at : \n the tip is %3.0f percent \n the root is %3.0f percent',Vf,a1r,a2r,b1r,b2r,a1t,a2t,b1t,b2t,Rt,Rr)
