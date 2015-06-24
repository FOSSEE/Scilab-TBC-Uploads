
//example3-15 in page 63
clc;
//Given data
R1=15e+3; // resistance R1=15 K-ohm
Rm=50;// coil resistance in ohm
R2=50;// resistance R2 in ohm
Im=50e-6;// FSD=50 micro-ampere
//calculations
printf("at Rx=0 &amp; Eb=1.3 V,\n");
 Rx=0; Eb=1.3;
 Ib=Eb/(Rx+R1);
 I2=Ib-Im;
 Vm=Im*Rm;
 R21=Vm/I2;// the resistance R2 in ohm
 printf("R2=%.2f ohm\n",R21);
 for Eb=1.5:-0.2:1.3,// To find Rx
     Vm=0.5*Im*Rm;
     if Eb==1.3
         R2=R21;
     end
     I2=Vm/R2;
     Ib=I2+Im*0.5;
     Rx=(Eb/Ib)-R1;
     printf("At 0.5 FSD with Eb=%.1f V,\n",Eb);
     printf("Rx=%d K-ohm \n",Rx/1000);
 end
 //result
//at Rx=0 &amp; Eb=1.3 V
//R2=68.181818 ohm
//At 0.5 FSD with Eb=1.5V,
//Rx=15 K-ohm 
//At 0.5 FSD with Eb=1.3 V,
//Rx=15 K-ohm 