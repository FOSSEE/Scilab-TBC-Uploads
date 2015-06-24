
Vin=2  //Volt
Vosc=2    //Volt
VPD=2  //volt
Ein=0.75
Eosc=0.75
Vd=1
dW=2*%pi*10^7
Km=VPD/(Vin*Vosc)
printf("\nKm=%.1f V^-1",Km)
Kd=0.5*Km*Ein*Eosc
Ko=dW/Vd
//(a)
qd=2*%pi*(11-10)*10^6/(Ko*Kd)
printf("\n(a)qd=%.4f rad = %.4f degree\n",qd,qd*180/%pi)
//(b)
qd=2*%pi*(9-10)*10^6/(Ko*Kd)
printf("\n(b)qd=%.4f rad = %.4f degree",qd,qd*180/%pi)