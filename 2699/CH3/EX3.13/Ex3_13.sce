//EX3_13 PG-3.40
clc
Ep=230; //rms value of primary voltage
N2toN1=1/15;//turns ratio
Rf=0;//diode is ideal
Rs=0;//transformer is ideal
Rl=50;//load resistance
Es=Ep*N2toN1;//rms vaue of primary voltage
Esm=sqrt(2)*Es;//peak value of input voltage
Im=Esm/(Rs+2*Rf+Rl);
Idc=2*Im/%pi;
Edc=Idc*Rl;//load voltage
printf("\n Therefore load voltage is %.1f V\n",Edc)
Rf=.482;//ripple factor for full wave rectifier
Vrip=Rf*Edc;//ripple voltage
printf("\n ripple voltage is %.4f V",Vrip)
//in the book the ripple voltage has been rounded off to 
//6.6516V but the actual ans is 6.6539V
