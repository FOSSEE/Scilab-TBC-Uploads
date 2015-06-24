Tj=150;
Ts=25;
Pw=15;
Rthjs=(Tj-Ts)/Pw; //Junction-to-solder point resistance
Rthca=2;
Rthhs=10;
Ta=60;
Rthtot=Rthjs+Rthca+Rthhs; //total thermal resistance
Pth=(Tj-Ta)/(Rthtot); //dissipated power
disp("Watts",Pth,"Maximum dissipated power");