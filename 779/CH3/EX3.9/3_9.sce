dc = 40e-02;
L = 30e-02;
P = 1e05; // Pressure in Pascal
I = 0.5;
V = 24;
t = 15*60; // in seconds
Wm = V*I*t;
Ws = 0.9*Wm;
W = P*(%pi/4)*dc^2*L;
disp("J",Wm,"Work input to the motor is")
disp("J",Ws,"Work input to the stirrer is")
disp("J",W,"Work done by the fluid on the atmosphere is")
