clear
//
ur=0.20       //The coefficient of friction  between the rope and the fixed drum
uo=0.30        //The coefficient of friction  between other surfaces
cosa=4.0/5.0 //cos of angle of inclination
sina=3.0/5.0 //sin of angle of inclination
Ww=1000.0  //weight
o=3.14   //angle of contact of rope with pulley
//for unknown weight
//force balance perpendicular to the plane
//N1 = W cos α
//fr=uoN1
//force balance along the plane
//T1 = F1 + W sin α
//for 1000 N body
//force balance perpendicular to the plane
//N2=N1+Wwcosa
//fr2=uoN2
//force balance along the plane
//T2= Wwsina -F1 -F2
//T2=T1*e^(ur*o)
W=(Ww*sina-uo*Ww*cosa)/(((uo*cosa+sina)*(2.71**(uo*o)))+(uo*cosa+uo*cosa))
printf("\n Weight is  %0.3f  N",W)
