//Example_a_7_19 page no:285
clc;
i=((100/(4+%i*10))-((5*4*%i)/(4+%i*10)));
Voc=100-(4*(3.55-1.48*%i));
Isc=25+50*%i;
Zth=Voc/Isc;
Z=conj(Zth);
disp(Z,"the value of load that will receive maximum power is (in ohm)");
I=Voc/(Zth+Z);
Imag=sqrt(real(I)^2+imag(I)^2);
P=Imag^2*real(Z);
disp(P,"the maximum power delivered to the load is (in W)");
//power values varies with textbook hence textbook uses rounded off values
