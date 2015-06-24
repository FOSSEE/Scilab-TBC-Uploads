//chapter 3
//example 3.9
//page 137
R1=120*10^3;Rf=1.2*10^6;Cf=10*10^-9// given
fa=1/(2*%pi*Rf*Cf);// corner frequency
F=10*10^3;
Vin=5;
disp(fa)//coner frequency
safefrequency=10*fa//safe frequency is 10 times of corner frequency
Adc=Rf/R1;//D.C gain
Adb=20*log10(Adc)// gain in db
A=(Rf/R1)/sqrt(1+(F/fa)^2)//gain for practical intregrater circuit
disp(A)
Vout=A*Vin;//|A|=Vout(peak)/Vin(peak)
disp(Vout)