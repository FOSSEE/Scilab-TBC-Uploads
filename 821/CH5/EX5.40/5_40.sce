T1=1000;//initial temperature in kelvin//
Kp1=0.72;//Kp value at T1 temperature//
T2=1260;//final temperature in kelvin//
Kp2=1.60;//Kp value at T2 temperature//
R=1.99;//universal gas constant//
printf('Since Kp2>Kp1 one would expect dH to be positive i.e Endothermic reaction.');
dH=(2.303*R*T1*T2*log10(Kp2/Kp1))/(T2-T1);
printf('\ndH for the reaction=dH=%fcal=7.702Kcal',dH);
