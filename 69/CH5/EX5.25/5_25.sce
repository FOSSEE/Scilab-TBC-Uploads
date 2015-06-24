clear; clc; close;

Vcc = 18;
Veb1 = 0.7;
Rb = 2*(10^(6));
Rc = 75;
Beta1 = 140;
Beta2 = 180;

Ib1 = (Vcc-Veb1)/(Rb+(Beta1*Beta2*Rc));
Ic1 = Beta1*Ib1;
Ib2 = Ic1;
disp(Ib2,"Ib :");
Ic2 = Beta2*Ib2;
disp(Ic2,"Ic :");
Ie1 = Ic1-Ib1;
Ic = Ie1+Ic2;
disp(Ic,"Ic(Total) :");
Vo_dc = Vcc-Ic*Rc;
disp(Vo_dc,"Dc voltage(Ouput) :");
Vi_dc = Vo_dc-Veb1;
disp(Vi_dc,"Dc voltage (Input) :");
