// example:-7.1,page no.-339.
//program to compare the Q of an air filled and teflon filled coaxial line resonator.
sigma=5.813*10^7;muo=4*%pi*10^-7;f=5*10^9;eta=377;a=1*10^-3;b=4*10^-3;
omega=2*%pi*f;ko=104.7;B=104.7;alpha=0.022;
Rs=sqrt((omega*muo)/(2*sigma));
alphaca=(Rs/(2*eta*log(b/a)))*((1/a)+(1/b)); // attenuation due to conductor loss for air filled line.
eipsilar=2.08;tandelta=0.0004;  // for teflon filled line.
alphact=((Rs*sqrt(2.08)*0.01)/(2*eta*log(b/a)))*((1/a)+(1/b)); // attenuation due to conductor loss for teflon filled line.
alphada=0; // for air filled line.
alphadt=ko*(sqrt(eipsilar)/2)*tandelta;
Qair=B/(2*alpha);
B=B*sqrt(eipsilar);
alpha=0.062;
Qteflon=B/(2*alpha);
disp(Qair,'Qair = ')
disp(Qteflon,'Qteflon = ')
disp("conclusion:-Qair is almost twice that of Qteflon")