// page no 479
//prob no 10.21
// formula for estimate error E is E = mk^ - mk = a1* mk-1 +a2* mk-2 -mk
//given: various values of correlation (mk*mk)'= (m^2)',(mk*mk-1)'= .825* (m^2)',(mk*mk-2)'= .562*(m^2)',(mk*mk-3)'= .825*(m^2)' , R02=.562(m^2)', a1=1.1314, a2= -0.3714
// mean square error is given by I=(E^2)'=[1-((.825*a1)+(.562*a2))]*(m^2)'= .2753*(m^2)'
clc;
m=1;
I=.2753*(m^2)';
S=10*log ((m^2)'/I);
disp(+'dB',S,"SNR improvement = ");