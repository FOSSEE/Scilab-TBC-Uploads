//a 
f = 60; //frequency of the volatge source
V = complex(141);//voltage supply V = 141sin(wt)
R = 3; //resistance of the circuit 
L = 0.0106; // inductance of the circuit 
Z = complex(R,2*%pi*f*L);//impedance of the circuit = R + jwL
i = V/Z; //current 
I = sqrt (real(i)^2 + imag(i)^2); //calculating the peak value of the current by using its real and imaginary parts
phi = atan(imag(i)/real(i)); //calculatig the phase of the resultant current by using its real and imaginary parts 
disp("a")
disp(I,"effective value of the steady state current = ")
disp(phi,"relative phase angle = ")

//b
// expression for the instantaneous current can be written as 
//i = I sin(wt + phi)

//c
R = complex(3);
 vr = V*R/Z; // voltage across the resistor
Vr = sqrt (real(vr)^2 + imag(vr)^2); //peak value of the voltage across the resistor 
phi1 = atan(imag(vr)/real(vr)); //phase of the voltage across the resistor 

vl = V - vr; //voltage across the inductor 
Vl = sqrt (real(vl)^2 + imag(vl)^2); //peak value of the voltage across the inductor 
phi2 = atan(imag(vl)/real(vl)); //phase of the voltage across the inductor 
disp("c")
disp(Vr,"effective value of the voltage drop across the resistor = ")
disp(phi1,"phase of the voltage drop across the resistor = ")
disp(Vl,"effective value of the voltage drop across the inductor = ")
disp(phi2,"phase of the voltage drop across the inductor = ")

//d
Pav = V*I*cos(phi); //average power dissipated by the circuit 
disp("d")
disp(Pav,"average power dissipated by the circuit = ")

//e
pf = cos(phi); //power factor
disp("e")
disp(pf,"power factor = ")