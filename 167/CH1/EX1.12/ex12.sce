//ques12
//Analyzing a Multifluid Manometer with EES
clc
g=9.81;//acc due to gravity in m/s^2
Patm=85600;//Atmospheric pressure in Pa
h1=0.1;//height of water in metre
h2=0.2;//height of oil in metre
h3=0.35;//height of mercury in metre
dwater=1000;//density of water in Kg/m^3
doil=850;//density of oil in Kg/m^3
dmercury=13600;//density of mercury in Kg/m^3
P1=Patm-(dwater*g*h1+doil*g*h2-dmercury*g*h3);//in Pa
printf('Pressure at point 1 = %.0f Pa',P1);
//Now to find h3 if mercury is replaced by another oil
dmercury=1030;//Density of new mercury in Kg/m^3
h3=(P1-Patm+dwater*g*h1+doil*g*h2)/(g*dmercury);//in metre
printf("\n New height h3 = %.2f metres",h3);


