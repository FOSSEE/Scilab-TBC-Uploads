//Example 6.1
//calculate (a) the diameter of cavity on the boiling surface
//which produce a bubble nucleus that does not collapse .
//(b) what degree of superheat is necessary so that a bubble nucleus grow 
//in size after detachment from the cavity.
//(a)
Tsat=350            //K, saturated temp.
Tl=Tsat+5           //K, liquid temp.
//By antoine eqn.
T=Tl-273            //C, 
pl=exp(4.22658-(1244.95/(T+217.88)))
ST=26.29-0.1161*T   //dyne/cm, Surface tension of liquid
ST_=ST*10^-3        //N/m  Surface tension of liquid
Lv=33605            //kj/kgmol, molar heat of vaporization
R=0.08314           //m^3  bar/kgmol K, gas costant
r=(2*ST_*R*Tsat^2)/((Tl-Tsat)*pl*(Lv*10^3))
printf("So a bubble nucleus that has been detached from a cavity will not collapse in the liquid if it is larger than %f micrometer \n",r*10^6)

//(b)
r1=10^-6       //m
//pl1=exp(4.22658-(1244.95/(Tl_-273+217.88)))   //vapour pressure
//ST1=0.02629-1.161*10^-4(Tl_-273)              //surface tension

deff('[x]=f(Tl)','x=(Tl-Tsat)-2*(0.02629-1.161*10^-4*(Tl-273))*R*Tsat^2/(r1*Lv*10^3)')
Tl=fsolve(0.1,f)
T_=(Tl-273.5)-(Tsat-273)
printf("The superheat of the liquid is %f C",round(T_))
