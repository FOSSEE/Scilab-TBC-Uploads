clear;
clc;

//Caption:Logic Level Output of an ECL gate
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
disp('mA',I,'Current in 300 ohm resistance I=');
//Output Voltage at Y
vy = -(r*I/1000)-Vbe5;//I is in mA so 1000 is multiplied
Vbe = vy-Ve;
disp('V',Vbe,'Vbe = ');
if(Vbe<Vbecutin)
    disp('Input transistors are non conducting as was assumed');
    disp('If atleast one input is high then it is assumed that curent in 1.18K resistance is switched to R and Q4 is cutoff');
    disp('Drop in 300 ohm resistance is zero.Since the base aand collector are tied together Q5 now behaves as a diode');
    disp('Across Q5');
    v=0.7;//voltage across Q5 in V
    rQ5 = 1.5;//in K
    i = (Vee-v)/rQ5;
    v = 0.75;//from the graph in V
    disp('mA',i,'i=');
    disp('V',v,'v=');
    Ve = -v-Vbe5;
    Vbe4=-Vbb-Ve;
    disp('V',Vbe4,'Vbe4=');
end
disp('The total output swing between two logic gates');
vo = -vy-v;
disp('V',vo,'vo=');


//end