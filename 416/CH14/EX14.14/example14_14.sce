clc
clear
disp('example14.14')
Aa=0.98;Ap=3 //magnitude and angle of constant A
Ba=110;Bp=75 //magnitude and angle of constant B
p=50      //given power 50
pf=0.8   //given power factor is 0.8
vr=132   //voltage at reseving station
vs=132  //voltage at source station to be maintained
vsr1=p*pf+(Aa*(vr^2)/Ba)*cosd(Bp-Ap)
ph=vsr1*Ba/(vs*vr)
phh=acosd(ph)
del=Bp-phh
qrr=((vs*vr/Ba)*sind(phh))-((Aa*(vr)^(2)/Ba)*sind(Bp-Ap))  //reactive power to maintain voltage equal
qrre=p*sind(acosd(pf)) //reactive power for the load
qrc=qrre-qrr
printf("the reactive power supply and reseving power is %dkV \nreactive power %.2fMvar",vs,qrr)
printf("\nthe required compensator network neeeded %.2fMvar",qrc)
disp('(b)')
cosb=(Aa*cosd(Bp-Ap)*(vr)^(2)/Ba)*(Ba/(vs*vr)) //under no oad condition
phb=acosd(cosb)
qrb=(vs*vr*sind(phb)/Ba)-(Aa*vr*vr*sind(Bp-Ap)/Ba)
if qrb>0 then
    printf("thus under no load condition the line delivers %.2fMvar at receiving end.the reactive power must be absorbed by shunt reactor at receving end. thus the capacity of shunt reactor, for no load condition is %.2fMvar. ",qrb,qrb)
else
    printf("thus under no load condition the line absorbs %.2fMvar at receiving end.the reactive power must be delivered by shunt reactor at receving end. or reactive must suppiled by the source thus the capacity of shunt reactor, for no load condition is %.2fMvar. ",qrb,qrb)
end
