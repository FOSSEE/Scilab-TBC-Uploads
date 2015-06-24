//Frequency Modulation : Transmission : example 5-5 : (pg 215)
fc=(2*%pi*(10^8))/2*%pi;
Vm=2000;
R=50;
P=(2000/sqrt(2))^2/R;
mf=2;//by inspection of FM equation
fi=(%pi*10^4)/(2*%pi);
d=(mf*fi);
BW=mf*40;
bw=2*(d+fi);
P1=((0.58*2000/sqrt(2))^2)/R;
P2=((0.3*2000/sqrt(2))^2)/R;
//part(a)
printf("\nfc = %.f Hz",fc);//by inspection of FM equation
//part(b)
printf("\nthe peak voltage is 2000V \nP = %.f W",P);
//part(c)
printf("\nmf = 2");//by inspection of FM equation
//part(d)
printf("\nthe intelligence frequency fi = %.f Hz",fi);
//part(e) 
printf("\nmf = d/fi \nd = %.f Hz",d);//d is maximum deviation
printf("\nas mf=2,significant sidebands exist to J4 \nBW = %.f Hz",BW);
printf("\n BW = %.f Hz",bw);//using carson's rule (BW = 2(dmax+fimax))
//part(f)
printf("\nJ1 is the largest sideband at at 0.58 times the unmodulated carrier amplitude");
printf("\nP = %.f W",P1);
printf("\nor 2*135 = 27kW for two sidebands at +-5kHz from carrier");
printf("\nThe smallest sideband J4 is 0.03 times the carrier = %.f W",P2);



