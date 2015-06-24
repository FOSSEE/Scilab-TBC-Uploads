//Chapter 15, Problem 22
clc;
R=10;                             //resistance in ohm
L=100e-3;                           //inductance in henry
C=2e-6;                         //capacitance in farad
V=50;                               //voltage
fr=1/(2*%pi*sqrt(L*C));             //resonant frequency
I=V/R;                              //current
Vl=I*2*%pi*fr*L;                    //voltage across coil at resonance
Vc=I*1/(2*%pi*fr*C);                //voltage across capacitance at resonance
Vm=Vl/V;
printf("(a) Resonant frequency = %.1f Hz\n\n",fr);
printf("(b) Current at resonance = %d A\n\n",I);
printf("(c) Voltages across the coil and the capacitor at resonance\n Vl = %d V\nVc = %d V\n\n",Vl,Vc);
printf("(d)Q-factor of the circuit = %.2f",Vm);
