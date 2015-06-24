
//Solve the voltage divider accurately by applying thevenin's theorem
clear;
clc;
//soltion
//given
B=100;            //dc beta
Rc=2*10^3;//ohm      //resistor connected to collector
R1=10*10^3;//ohm      //voltage divider resistor 1
R2=1*10^3;//ohm      //voltage divider resistor 2
Re=200;//ohm      //resistor connected to emitter
Vcc=10;//V            //Voltage supply across the collector resistor
Vbe=0.3;//V          //base to emitter voltage

Vth=Vcc*R2/(R1+R2);
Rth=R1*R2/(R1+R2);

printf("\nThevenin equivalent voltage Vth = %.5f V",Vth);
printf("\nThevenin equivalent resistance Rth = %.2f ohm",Rth);

Ib=(Vth-Vbe)/(Rth+(1+B)*Re);
Ic=B*Ib;
Ie=Ic+Ib;
Vce=Vcc-Ic*Rc-Ie*Re; 
printf("\nThe accurate value of Ic = %.5f mA",Ic*10^3);
printf("\nThe accurate value of Vce = %.6f V",Vce);
Icp=3*10^-3; // Current calculated by voltage divider in previous example
Vcep=3.4; // Voltage calculated by voltage divider in previous example
Err_Ic=(Ic-Icp)*100/Ic;
Err_Vce=(Vce-Vcep)*100/Vce;
printf("\nError in Ic= %.1f percent\n",Err_Ic);
printf("Error in Vce= %.0f percent",Err_Vce);

// The errors and The accurate values are different 
// because of the approaximation in Vth and Rth in book

// In Book Ic = 2.8436 mA and Vce = 3.73839 V
// Error in Ic = -5.5% 
// Error in Vce = +9% 

