//To find  resistance Rs and Rsh in the given ciruit
// example 3-10 in page 55
clc;
//data given
Iav=50e-6;//average current through PMCC instrument=50 micro ampere
Rm=1700;// coil resistance in ohm
Vf=0.7;// diode forward drop in volts
If=100e-6;// forward current = 100 micro-ampere
Vrms=50;// ac rms voltage in volts
// calculation
Im=Iav/(0.5*0.637);//peak current in ampere
Ifp=(100/20)*If;//at 20% of FSD, diode peak current(If) must be at least 100 micro ampere; therefore, at 100% of FSD,
Ishp=Ifp-Im;// peak current through Rsh in ampere
Vm=Im*Rm;// peak voltage in volts
Rsh=Vm/Ishp;
Rs=(1.414*Vrms-Vm-Vf)/Ifp;
printf("Rsh=%d ohm\n",Rsh);
printf("Rs=%.1f K-ohm\n",Rs/1000);
//result
//Rsh=778 ohm
//Rs=139.5 K-ohm