// To find the collector and base voltages
// example 5-2 in page 121
clc;
// Given data
R1=15e+3; R2=27e+3; Rc1=2.7e+3; R11=R1; R21=R2; //resistance values in Ohm where R11=R1' and R21=R2'
Vc2=0.2;// collector voltage of on transistor in volt
Vce=Vc2;//collector-emitter saturation voltage in volt
Vbb=-5;//dc power supply in volt
Vcc=5;//dc power supply in volt
//calculations
Vr1r2=Vc2-Vbb;//voltage across Ri and R2 in volt
Vr1=(R1/(R1+R2))*Vr1r2;// voltage across R1 resistor in volt
Vb1=Vc2-Vr1;// base voltage
printf("Vb1=%.1f V\n",Vb1);
//with Q1 off
Vrc1=(Rc1/(Rc1+R11+R21))*(Vcc-Vbb);
Vc1=Vcc-Vrc1;// collector voltage in volt
printf("Vc1=%.1f V",Vc1);
//result
//Vb1=-1.657143 V
//Vc1=4.395973 V 