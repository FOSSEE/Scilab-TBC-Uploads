clear; clc; close;

Vcc = 18;
Veb1 = 0.7;
Rb = 2*(10^(6));
Rc = 75;
Beta1 = 140;
Beta2 = 180;
ri1 = 3*(10^(3));

Zb = ri1+(Beta1*Beta2*Rc);
Zi = (Rb*Zb)/(Rb+Zb);
disp(Zi,"Input impedance(Zi) :");

Ai = (Beta1*Beta2)*(Rb/(Rb+Zi));
disp(Ai,"Current gain(Ai) :");

Zo = ri1/(Beta1*Beta2);
disp(Zo,"Output impedance(Zo) :");
Av = (Beta1*Beta2*Rc)/((Beta1*Beta2*Rc)+ri1);
disp(Av,"volatge gain(Av) :");
