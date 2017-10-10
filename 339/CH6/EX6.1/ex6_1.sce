//define physical constants
q=1.60218e-19;
k=1.38066e-23;

// define material properties
Nc_300=[1.04e19 2.8e19  4.7e17];
Nv_300=[6e18    1.04e19 7e18];
mu_n=  [3900    1500    8500];
mu_p=  [1900    450     400];
Wg=    [0.66    1.12    1.424];

T0=273;
T=-50:250; // temperature range in centigrade

sigma=zeros(3, length(T));

for s=1:3 //loop through all semi conductor materials
   Nc=Nc_300(s)*((T+T0)/300).^(3/2);
   Nv=Nv_300(s)*((T+T0)/300).^(3/2);
sigma(s,:)=[q*sqrt(Nc.*Nv).*(exp(-Wg(s)./(2*k*(T+T0)/q)))*(mu_n(s)+mu_p(s))];
end;

plot(T,sigma(1,:),'r');
mtlb_hold on
plot(T,sigma(2,:),'b')
plot(T,sigma(3,:),'g')
legend('Ge','Si','GaAs',2);
title('Conductivity of semiconductor at different temperatures');
xlabel('Temperature, {\circ}C');
ylabel('Conductivity \sigma, \Omega^{-1}cm^{-1}');