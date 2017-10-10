clc;
v=400; // balanced supply voltage
i=10; // line current
f=50; // frequency of supply
m=3; // number of phases 
pf=0.8; // lagging power factor
pfn=0.9; // improved power factor
disp('staor in star');
i=i*(pf-%i*sqrt(1-pf^2)); // complex form of line current
il=real(i)/pfn; // line current at improved power factor
il=il*(pfn-%i*sqrt(1-pfn^2)); // complex form of new line current
//from fig. 6.39 
ic=-(imag(i)-imag(il)); // reactive component of current to be neutralised
// capacitor bank is star connected
xcs=v/(ic*sqrt(3)); // capacitance reactance
Cs=1/(2*%pi*f*xcs); // capacitance
K=m*ic*v/sqrt(3); 
printf('Per phase value of capacitance for star connected capacitor bank is %f microfarad\n',Cs*10^6);
printf('Total KVA rating for star connected capacitor bank is %f KVA\n',K/1000);
// delta connected capacitor bank
// capacitor bank is delta connected,  converting into equivalent star Xstar=Xdelta/3 
xcd=v/(ic*sqrt(3)); // capacitance reactance
Cd=1/(2*%pi*f*xcd*m); // capacitance
printf('Per phase value of capacitance for delta connected capacitor bank is %f microfarad\n',Cd*10^6);
printf('Total KVA rating for delta connected capacitor bank is %f KVA\n',K/1000);
disp('Stator in delta');
i=(abs(i)/sqrt(3))*(pf-%i*sqrt(1-pf^2)); // complex form of line current
il=real(i)/pfn; // line current at improved power factor
il=il*(pfn-%i*sqrt(1-pfn^2)); // complex form of new line current
//from fig. 6.39 
ic=-(imag(i)-imag(il)); // reactive component of current to be neutralised
// capacitor bank is star connected
// capacitor bank is star connected,  converting into equivalent delta Xdelta=3*Xstar
xcs=v/ic; // capacitance reactance
Cs=m/(2*%pi*f*xcs); // capacitance
K=m*ic*v; 
printf('Per phase value of capacitance for star connected capacitor bank is %f microfarad\n',Cs*10^6);
printf('Total KVA rating for star connected capacitor bank is %f KVA\n',K/1000);
//  delta connected capacitor bank
xcd=v/ic; // capacitance reactance
Cd=1/(2*%pi*f*xcd); // capacitance
printf('Per phase value of capacitance for delta connected capacitor bank is %f microfarad\n',Cd*10^6);
printf('Total KVA rating for delta connected capacitor bank is %f KVA\n',K/1000);
