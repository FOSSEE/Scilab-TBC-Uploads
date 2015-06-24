//Calculate quiescent output voltage and small signal voltage gain
clear;
clc;
//soltion
//given

//At input Voltage =3V
Vi1=3;//V      //input voltage
Vbe=0.7;//V
B=250;
Vcc=10;//V     //Supply
Re1=1*10^3;//ohm
Rc1=3*10^3;//ohm
Re2=2*10^3;//ohm
Rc2=4*10^3;//ohm
Vb1=Vi1;        //Voltage at the base of transistor T1
Ve1=Vb1-Vbe;      //Voltage at the emitter of transistor T1
Ie1=Ve1/Re1;
Ic1=Ie1;
Vc1=Vcc-Ic1*Rc1;
Vb2=Vc1;
Ve2=Vb2-Vbe;
Ie2=Ve2/Re2;
Ic2=Ie2;
Vo1=Vcc-Ic2*Rc2;
printf("The quiescent output voltage(At input Voltage =3 V ) is %.1f V\n",Vo1);

//At input Voltage =3.2 V
Vi2=3.2;//V      //input voltage
Vb1=Vi2;        //Voltage at the base of transistor T1
Ve1=Vb1-Vbe;      //Voltage at the emitter of transistor T1
Ie1=Ve1/Re1;
Ic1=Ie1;
Vc1=Vcc-Ic1*Rc1;
Vb2=Vc1;
Ve2=Vb2-Vbe;
Ie2=Ve2/Re2;
Ic2=Ie2;
Vo2=Vcc-Ic2*Rc2;
printf("The quiescent output voltage (At input Voltage =3.2 V) is %.1f V\n",Vo2);

//Small Signal input and output voltage
vi=Vi2-Vi1;
vo=Vo2-Vo1;
Av=vo/vi;
printf("The small signal voltage gain is %.0f ",Av)
