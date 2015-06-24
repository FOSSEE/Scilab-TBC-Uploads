//Caption:Find the (a) new armature current (b) new power factor
//Exa:8.6
clc;
clear;
close;
V=208;//in Volts
V_a=V/sqrt(3);//in volts
P=7200;//in Watts
X_a=4;//synchronous reactance
pf=0.8;//lagging
theta=-acosd(pf);
I_a=(P/(3*V_a*pf))*(cosd(theta)+%i*sind(theta));//Armature current (in Amperes)
E_a=V_a-(I_a*%i*X_a);//in Volts
E_an=1.5*abs(E_a);//new excitation voltage (in Volts)
delta_n=-asind(P*X_a/(3*E_an*V_a));//new torque angle
I_an=(V_a-E_an*(cosd(delta_n)+%i*sind(delta_n)))/(%i*4);
disp(abs(I_an),'(a) New armature current (in Ampere)=');
disp(atand(imag(I_an)/real(I_an)),'Phase angle of new armature current (in Degree)=');
pf_n=cosd(atand(imag(I_an)/real(I_an)));
disp(pf_n,'(b) New Power factor=');