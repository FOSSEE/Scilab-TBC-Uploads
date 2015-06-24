clc;
warning("off");
printf("\n\n example11.2 - pg501");
// given
r1=(2.067/2)/(12);  //[ft]
r2=r1+0.154/12;  //[ft]
r3=r2+3/12;  //[ft]
L=1;  //[ft]
Ka=26;  //[Btu/h*ft*degF]
Kb=0.04;  //[Btu/h*ft*degF]
T1=50;  //[degF]
Ra=(log(r2/r1))/(2*%pi*L*Ka);
Rb=(log(r3/r2))/(2*%pi*L*Kb);
R=Ra+Rb;
deltaT=-18;  //[degF] - driving force
Qr=-(deltaT/(R));
disp(Qr);
deltaT1=(-Qr)*(Ra);
T2=T1+deltaT1;
printf("\n\n The interface temperature is \n T2 = %f degF",T2);


