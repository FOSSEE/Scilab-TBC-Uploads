
clc;
Pout=40000;//output power
V=250;//supply voltage in volts
r=0.2;//sum of armature circuit resistance & series field circuit resistance
n=1500;//speed of dc series motor at rated current

//PART(a)-

Ir=Pout/V;//rated current
Ea=V-Ir*r;//counter emf at rated load
Wm=(2*%pi*n)/60;//angular speed of rotation of motor
Te=round((Ea*Ir)/Wm);//rated electromagnetic torque in Nm.
//Now the relation giving the torque speed characteristics of series motor must be developed.
//Since the magnetic saturation is neglected
//Te=Ka*phi*I
//Te=K1*Ia^2
K1=Te/(Ir^2);//Ia=rated current
//Ea=K2*phi*n=K2*Ia*n
K2=Ea/(Ir*n);// values of constant of proportionality 
//The values of constants k1 & K2 are obtained from rated conditions
//Ia=(V-Ea)/r & Ea=K2*Ia*n ; Ia=1250-0.00454*Ia*n
//Ia=1250/(1+0.00454n) ....(1); Ia=armature current at any speed
//Te=K1*Ia^2
n=[1400 1450 1500 1550 1600 1650 1700];
Te=K1.*(((V/r)^2)./(1+(K2/r).*n).^2); // Electromagnetic torque
Tl=5.*sqrt(n); // load torque
plot(Te,n,Tl,n);
xlabel('T(Nm)');
ylabel('Speed(rpm)');
title('Speed-torque characteristics for Series-motor and for load');

//THE INTERSECTION OF SERIES MOTOR & LOAD CHARACTERISTICS GIVES THE OPERATING POINT

//From the curve the operating point is obtained at 1591 rpm & torque is 199.5 Nm
disp('The operating speed of motor is 1591 rpm.');

//PART(b)-
//Current drawn from the source is -
Ia=(V/r)/(1+(K2/r)*1591);//From equation (1)
printf('Current drawn from the source is %f A.',Ia);
