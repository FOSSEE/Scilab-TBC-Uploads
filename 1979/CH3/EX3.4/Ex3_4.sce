//chapter-3 page 48 example 3.4
//==============================================================================
clc;
clear;

f=37.5*10^6;//Frequency in Hz
c=3*10^8;//Velocity of Light in m/sec
l1=10;//Length of line in met
Vg=200;//Generator Voltage in volts(rms)
Zint=200;//Internal Resistance of Generator in ohms
Z0=200;//Characteristic Impedance in ohms
Zl=100;//Load impedance in ohms

//CALCULATIONS
w=c/f;//Wave Length in met
b=2*(%pi)/w;
l1=(5/4)*w;//For Lossless Line
Zi=Z0*((Zl+(Z0*(%i)*tan(b*l1)))/(Z0+(Zl*(%i)*tan(b*l1))));//Input Impedance at Generator end
Vs=Vg*(Zi/(Zi+Z0));//Voltage in line in volts
Is=Vg/(Zi+Z0);//Current in Line drawn from Generator in amps
Ps=Vs*Is;//Power drawn in line
Pl=Ps;//For Lossless Lines Power delivered to load is equal to the Power drawn in line
Il=sqrt((Pl/Zl));//Current flowing in the load
m=real(Il);//Magnitude of Current flowing in the load
p=imag(Il);//Phase of Current flowing in the load

//CALCULATIONS
mprintf('\nCurrent drawn from Generator is Is=%1.3f amps \nMagnitude of Current flowing in the load is m=%1.3f \nPhase of Current flowing in the load is p=%2.2f deg \nPower delivered to load is Pl=%2.2f watts',Is,m,p,Pl);

//=========================END OF PROGRAM==============================================================
