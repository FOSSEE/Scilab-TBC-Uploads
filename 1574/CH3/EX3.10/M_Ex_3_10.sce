
clc
//Answers from the book are little deviated but the evaluated values in the scilab are correct results
//Chapter3: Modulation
//Example3.10, page no 143
//Given
//b
Pc=50e3//Carrier power
Z=36 + %i*40//base impedance of the antenna
Ma=1//modulation depth
Pmod=Pc*(1+((Ma^2)/2))//power delivered to the antenna under 100% modulation
//i
R=36//resistance of the antenna 
Irms=sqrt(Pmod/R)//Antenna Current

//ii
Ic=sqrt(Pc/R)//RMS carrier current 

Icm=Ic*sqrt(2)// Peak carrier current 
Imod=2*Icm//Modulated current

Theta=atan(40/36)*180/%pi// from real and imaginary components of Z
Vbm100=Imod*Z//Peak base output voltage for 100% modulation
[Re_Vb,Im_Vb]=polar(Vbm100)

//iii
Ma=0.5
Imod=Icm*(1+0.5)

Vbm50=Imod*Z
[Re_Vb1,Im_Vb1]=polar(Vbm50)
mprintf('Antenna current for full modulation is: %f amp\nPeak base voltage is: %f/_%d volts\nPeak base voltage is: %f/_%d volts',Irms,Re_Vb,Theta,Re_Vb1,Theta)
// The Ans is little deviated from that of book as the decimal places considered while calculating at different stages might be different 
