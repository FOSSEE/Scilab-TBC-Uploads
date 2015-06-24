//Example No. 4.2.1
clc;
clear;
close;
format('v',7);
l=5;//cm(length of antenna)
f=100;//MHz(operating frequency)
Io=120;//mA(Terminal current)
t=1;//s(time)
theta=45;//degree(Angle)
r=3;//m(radius)
c=3*10^8;//m/s////Speed of light
omega=2*%pi*f*10^6;//rad/sec(rotation)
k=omega/c;//rad/m(Phase constant)
kr=2*%pi*r/3;//degree(Phase constant)
Er=Io*10^-3*l*10^-2/(2*%pi*r^2)*cosd(theta)*120*%pi*[1+1/(%i*kr)]*exp(-%i*kr+%i*omega*t);//V/m(Electric field)
Er=Er*1000;//mV/m(Electric field)
Er_mag=abs(Er);//mV/m(magnitude of Er)
Er_angle=atand(imag(Er),real(Er));//degree(angle of Er)
disp(Er_angle,Er_mag,"Value of Er : magnitude(mV/m) and angle in degree : ");
Etheta=Io*10^-3*l*10^-2/(4*%pi*r)*sind(theta)*120*%pi*%i*k*[1+1/(%i*kr)+1/(%i*kr)^2]*exp(-%i*kr+%i*omega*t);//V/m(Electric field)
Etheta_mag=abs(Etheta);//V/m(magnitude of Etheta)
Etheta_angle=atand(imag(Etheta),real(Etheta));//degree(angle of Etheta)
disp(Etheta_angle,Etheta_mag,"Value of Etheta : magnitude(V/m) and angle in degree : ");
Hfi=Io*10^-3*l*10^-2/(4*%pi*r)*sind(theta)*%i*k*[1+1/(%i*kr)]*exp(-%i*kr+%i*omega*t);//A/m(Magnetic field)
Hfi_mag=abs(Hfi);//A/m(magnitude of Hfi)
Hfi_angle=atand(imag(Hfi),real(Hfi));//degree(angle of Hfi)
disp(Hfi_angle,Hfi_mag,"Value of HΦ : magnitude(A/m) and angle in degree : ");
//Answer is not accurate in the book.
