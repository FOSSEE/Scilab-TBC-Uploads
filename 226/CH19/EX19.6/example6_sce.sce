//chapter 19
//example 19.6
//page 830
printf("\n")
printf("given")
Rl=50;Po=1;hFE=50;Vbe=.7;Vrc=4;Vre=1;Vd1=.7;Vd2=Vd1;
Vp=sqrt(2*Rl*Po)
Ip=Vp/Rl
Re3=.1*Rl;
Re2=4.7;//use stabdard value
Re2=Re3;
Icq=.1*Ip
Vb=Vbe+Icq*(Re2+Re3)+Vbe
Vc1=Vrc;
Ib2=Ip/hFE
Irc=Ib2+1*10^-3
Rc=Vrc/Irc
Rc=680;//use standard value
Vcc=2*(Vp+Vre+Vbe+Vrc)
Vcc=32;//use standard value
Vrcdc=.5*(Vcc-Vb)
Ic1=Vrcdc/Rc
Rb=(Vb-Vd1-Vd2)/Ic1