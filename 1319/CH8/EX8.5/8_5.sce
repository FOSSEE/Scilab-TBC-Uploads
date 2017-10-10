//Tapping of an auto transformer to limit current in squirrel cage motor

clc;
clear;

V=400; // Line to line voltage
Vph=V/sqrt(3); // Phase voltage
Z=1.54; // Standstill impedance
Ifl=30;// Full Load Current
Imax=75; // Max current which can be taken by the line
s=4/100; // Full load slip

t=poly([0 1],'t','c'); // Variable for tapping percent of normal voltage

Is=t*(Vph/(100*Z)); // Starting current in the motor

Ias=(t/100)*Is; // Current on supply side of the auto transformer

Tap=Ias-Imax; // Equation to find t

t=roots(Tap);// Numerical Value for t

if(imag(sqrt(t(1))))
    t=t(2);
else
    t=t(1);
end


Ism=Imax*100/t; // Starting current in the motor (Numerical Value)

st=((Ism/Ifl)^2)*s; // Starting torque to full load torque ratio

printf('The tapping provided to the auto transformer = %g percent of Normal Voltage \n',t)

printf('The starting torque available is %g times the full load torque \n',st)



