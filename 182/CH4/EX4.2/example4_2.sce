// To find currents I2 and I3 and calculate the meter circuit voltage in the given circuit
//example 4-2 in page 89
clc;
//Given data
R2=3.9e+3;//resistance R2=R3=3.9 K-ohm
R3=R2;
Vcc=12;//Vcc in volt
Vee=-12;// Vee in volt
Vbe=0.7;// voltage drop across the base_emitter
Vp=0;// base voltage of transistor 2
//calculation
VR2=0-Vbe-Vee;
VR3=VR2;
I2=VR2/R2;
I3=I2;
printf("I2=I3=%.1f mA\n",I2*1000);
for E=1:-0.5:0.5// voltage applied to the base of transistor 1 in volts
    Ve1=E-Vbe;// emitter voltage of transistor 1
    Ve2=Vp-Vbe;// emitter voltage of transistor 2
    V=Ve1-Ve2;// voltage difference b/w the two emitters
    printf("when E=%.1f V,\n",E);
    printf("circuit voltage (V)=%.1f V\n",V);
end
//result
//I2=I3=2.9 mA
//when E=1.0 V,
//circuit voltage (V)=1.0 V
//when E=0.5 V,
//circuit voltage (V)=0.5 V