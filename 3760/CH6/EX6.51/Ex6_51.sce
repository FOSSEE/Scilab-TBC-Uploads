clc;
v=3300; // balanced supply voltage
p=500000; // rated power of induction motor
f=50; // frequency of supply
m=3; // number of phases 
pf=0.7; // lagging power factor
pfn=0.9; // improved power factor
vc=420; // rated voltage of capacitor
n=0.86; // motor efficiency
i=p/(sqrt(3)*v*pf*n); // line current
i=i*(pf-%i*sqrt(1-pf^2)); // complex form of line current
il=real(i)/pfn; // line current at improved power factor
il=il*(pfn-%i*sqrt(1-pfn^2)); // complex form of new line current
//from fig. 6.39 
ic=-(imag(i)-imag(il)); // reactive component of current to be neutralised
// capacitor bank is delta connected
// capacitor bank is delta connected,  converting into equivalent star Xstar=Xdelta/3 
xcd=v/(ic*sqrt(3)); // capacitance reactance
Cd=1/(2*%pi*f*xcd*m); // capacitance
// now each capacitor is rated at 420 V, number of capacitor connected in series is
n=ceil(v/vc);
C=Cd*n; 
printf('Per phase value of each capacitance for delta connected capacitor bank is %f microfarad\n',C*10^6);
// let R be resistance of distribution circuit
// power lost without capacitor bank is m*abs(i)^2*R
// power lost with capacitor bank is m*abs(il)^2*R therefore
ps=(abs(i)^2-abs(il)^2)/abs(i)^2
printf('Percentage saving in losses is %f percent',ps*100);
