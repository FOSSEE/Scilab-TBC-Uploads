Z0=50; //define 50 Ohm characteristic impedance
Z=[50 48.5 75+%i*25 10-%i*5]; //define impedances for this example
Gamma=(Z-Z0)./(Z+Z0) //compute corresponding reflection coefficients
SWR=(1+abs(Gamma))./(1-abs(Gamma)); //find the SWRs
a=0:0.01:2*%pi;
for n=1:length(Z)

plot(abs(Gamma(n))*cos(a),abs(Gamma(n))*sin(a),'b','linewidth',2);
plot(real(Gamma(n)), imag(Gamma(n)),'ro');
end;

for n=1:length(Z)
   if n~=1
   end;
end;