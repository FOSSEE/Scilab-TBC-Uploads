clear;
clc;

//Calculation of noise margin
//Given Data
Vbb = 1.15;//in V
Vee=5.20;//in V
Vbe5=0.7;//in V
R=1.18;//in K
r=300;//in ohm
Vbecutin=0.5;//in V

//If all inputs are low then we assume that Q1,Q2 and Q3 are cutoff and Q4 is conducting
Ve=-Vbb-Vbe5;//Voltage at Common Emitter in V
//Current I in 1.18K Resistor
I = (Ve+Vee)/R;//in mA
I1=I;
//Output Voltage at Y
vy = -(r*I/1000)-Vbe5;//I is in mA so 1000 is multiplied
Vbe = vy-Ve;
if(Vbe<Vbecutin)
    v=0.7;//voltage across Q5 in V
    rQ5 = 1.5;//in K
    i = (Vee-v)/rQ5;
    v = 0.75;//from the graph in V
    Ve = -v-Vbe5;
    Vbe4=-Vbb-Ve;
end
vo = -vy-v;

//Calculation of noise margin
vn = Vbecutin-Vbe4;
disp('Positive noise spike which will cause the gate to malfunction');
disp('V',vn,'vn=');

//end