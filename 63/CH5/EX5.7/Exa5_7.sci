//Determine (a) The rms value of the required modulating voltage (b) The value of the fixed capacitance and inductance of the oscillator tuned circuit across which the reactance modulator is connected

Vgsmin = -2;
Vgsmax = -0.5;
Vm =  Vgsmax - Vgsmin;

Gmmin = 3.2e-4;
Gmmax = 8.3e-4;
f = 8.8e+7;
del = 75e+3;

Vrms = Vm/(2*sqrt(2));

Cn = Gmmin/(2*%pi*f);
Cx = (Cn*Gmmax)/Gmmin;

C = ( ((Cx - Cn)*f)/(4*del) - Cn);

L = 1/(4*%pi^2*f^2*C);


disp(Vrms, '(A) RMS value of the required modulating voltage (in V)')
disp(C, 'Value of the fixed capacitance (in F)')
disp(L, 'Value of the fixed inductance (in H)')
