clc;
//E=Ef+1% of Ef
k=1.38*1e-23;//boltzman constant
e=1.6*1e-19;//charge of electron
E=0.0555;
//0.1=1/[(exp((E*e)/(k*T)))+1]
T=E*e/(k*log(9));//Temprature
disp(+'kelvin',T,'Temprature = ');
//there is slight variation than book's answer.. checked in calculator also.(book's mistake)
