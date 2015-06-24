//CHAPTER 5_ Force,Torque and Shaft Power Measurement
//Caption : Piezoelectric Transducers
// Example 4// Page 302
mc=0.04   //('enter the connector mass=:')
m=0.01   //('enter the seismic mass=:')
k=10^9   //('enter the stiffness of the sensing element=:')
Sf=.005   //('enter the sensitivity of the transducer=:')
Xi=100*10^-6 //  ('enter the displacement amplitude of the shaker vibration=:')
Eo=.1   //('enter the reading of voltage recorder connected to the transducer=:')
wnc=sqrt(k/(m+mc));
R=20;    //20N (rms)
Z=(1/(m+mc))*(1/wnc^2)*R;
printf('Relative displacement is %fd',Z)
disp("wnc^2 is approx. 10^9. So,")
disp("Z is approx. 20nm(rms)")
f=100;   // given

F=R-((2*%pi*f)^2*(m+mc)*Xi);
printf('Actual force transmitted to the plate is %fd N',F)
