// Below values are taken fron table 16.4
Hr = -249952+(18.7*560)+(70*540);
Hp = 8*(-393522+20288)+9*(-241827+16087)+6.25*14171+70*13491;
Wcv = 150; // Energy out put from engine in kW
Qcv = -205; // Heat transfer from engine in kW
n = (Wcv-Qcv)*3600/(Hr-Hp);
disp("kg/h",n*114,"Fuel consumption rate is")
