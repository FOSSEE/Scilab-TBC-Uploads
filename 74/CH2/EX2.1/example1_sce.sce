//chpter 2
// example 2.1
//page 63, figure 2.16
//design the value of R1 if output voltage level required is zero volts.
// given
Vout=0
Vin=6.84
Vbe=0.7
R2=270
//Vin-Vbe-I(R1+R2)=0 applying KVL to base emitter
R1=1657.8-270;  // 0=(6.84-.7)270/(270+R1)
I=(Vin-Vbe)/(R1+R2)
Vout=I*R2;
disp(R1) // results