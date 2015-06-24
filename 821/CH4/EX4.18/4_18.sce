a=3.60;//Van der Waals constant for CO2 in L^2 atm per mol^2//
b=4.30*10^-2;//Van der Waals constant for CO2 in litre per mol//
N=300;//No. of moles of CO2 the cylinder contains//
V=100;//volume of cylinder in litres//
P=150;//Maximum pressure the cylinder can withstand in atm//
R=0.082;
K1=P+(N^2*a/V^2);
K2=V-(N*b);
T=(K1*K2)/(N*R);//The lowest temperature at which cylinder can explode in Kelvin//
printf('The lowest temperature at which cylinder can explode=T=%fK',T);
