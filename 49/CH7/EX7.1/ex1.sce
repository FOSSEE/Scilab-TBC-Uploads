//CHAPTER 7_ Flow Measurement
//Caption : Flow  Measurement
// Example 1// Page 406
t=293   //('Entering the temperature(in k) of pitot tube =:')
p1=0.1*10^6    //('entering the air pressure in pitot tube=:')
v=10     //('entering the velocity of air in pitot tube=:')
R=287;
disp("Density is given by:")
disp("pho1=p1/(R*t);")
pho1=p1/(R*t);
// dynamic pressure
Pd=pho1*v^2/2;
//we know that  v=sqrt(2Pd/pho)
// dv/dP=1/2(2/pho*Pd)^0.5
// Let the error or uncertainty in velocity is represented by Wv and in pressure by Wp
Wp=1    //('entering the uncertainty in the measurement of dynamic pressure=:')
disp("Uncertainty in velocity is given by ")
disp("Wv=(1/2)*(2/(pho1*Pd))^0.5*Wp;")
Wv=(1/2)*(2/(pho1*Pd))^0.5*Wp;
per_unc=Wv*100/10;
printf('So the percentage uncertainty in the measurement of velocity is %fd %% \n',per_unc)
