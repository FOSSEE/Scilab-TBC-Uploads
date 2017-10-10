Mx = 1.8; Pyx = 3.6133;
Px = 0.5; Tx = 280; Ty = 429;
Py = Pyx*Px; cp = 1.005;R = 0.287;
disp("bar",Py,"Pressure Py is")
Pxox = 0.17404;
Pox = Px/Pxox;
disp("bar",Pox,"Stagnation pressure is")
Txox = 0.60680;
Tox = Tx/Txox; 
disp("K",Tox,"Stagnation temperature is")
sysx = cp*log(Ty/Tx)-R*log(Py/Px);
disp("kJ/kg K",sysx,"The change in specific entropy is")