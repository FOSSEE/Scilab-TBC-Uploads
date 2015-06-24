//clear//
clc
clear
exec("8.12data.sci");
t=1:10:250;
for i=1:length(t)
T(i)=2*t(i)+283;

k2(i)=4.58*exp((E2/1.987)*((1/500)-(1/T(i))))
k1(i)=3.3*exp((E1/1.987)*((1/300)-(1/T(i))))
Ca(i)=Cao/(1+tau*k1(i))
kappa=UA/(vo*Cao)/Cp
G(i)=-(tau*k1(i)/(1+k1(i)*tau))*DH1-(k1(i)*tau*k2(i)*tau*DH2/((1+tau*k1(i)) *(1+tau*k2(i))));
Tc=(To+kappa*Ta)/(1+kappa);
Cb(i)=tau*k1(i)*Ca(i)/(1+k2(i)*tau);
R(i)=Cp*(1+kappa)*(T(i)-Tc);
Cc=Cao-Ca(i)-Cb(i);
F(i)=G(i)-R(i);
end
plot(T',[G R])

xtitle( 'Figure E8-12.1', 'T (K)', 'G(T),R(T)' ) ;
legend(['G(T)';'R(T)']);
