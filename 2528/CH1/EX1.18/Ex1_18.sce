// Chapter 1
//page 34
//Example no 1-18
//figure 1.19
//tail current 
//Given
clc;
Vcc=20;     //in Volt
Rc=3000;        //in Ohm
Rb=5000;        //in ohm
Rt=2000;        //in Ohm
Vee=10;        //in Volt
It=(Vee-0.7)/Rt;
printf("\n It =%.5f Amp\n ",It);// Result
//Ie1=Ie2=It/2
Ic=It/2;
Vc=Vcc-Ic*Rc;
printf("\n Collector voltage is %.3f V\n ",Vc);// Result
B=100;      //Assumumption
Ib=Ic/B;
printf("\n Ib %.8f Amp\n ",Ib);// Result
Vb=-Ib*Rb;
printf("\n Base Voltage %.5f V\n ",Vb);// Result


