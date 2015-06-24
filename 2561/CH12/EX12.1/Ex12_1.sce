//Ex12_1
clc
VEE=15
disp("VEE= "+string(VEE)+" volts") //  voltage supply 
VCC=15
disp("VCC= "+string(VCC)+" volts") //  voltage supply
VHI=+5
disp("VHI= "+string(VHI)+" volts") //  output voltage upper limit
VLO=-5
disp("VLO= "+string(VLO)+" volts") //  output voltage Lower limit
Vo=-VLO
IZmin=1*10^(-3)
disp("IZmin= "+string(IZmin)+" A") // Zener diode current rating
SR=0.5*10^(6)
disp("SR= "+string(SR)+" volts/seconds")//Slew rate
RB=100
disp("RB= "+string(RB)+ " ohm")  // resistance
RA=10*10^(3) 
disp("RA= "+string(RA)+ " ohm")  // resistance
A = 5000
disp("A = "+string(A))//op-amp gain
VREF=1
disp("VREF= "+string(VREF)+" volts") // Reference- voltage 
disp("part(i)")
RD=(VCC-Vo)/IZmin
disp("RD=(VCC-Vo)/IZmin= "+string(RD)+ " ohm")  // Series dropping-resistance

disp("part(ii)")
t=(VHI-VLO)/SR
disp("t=(VHI-VLO)/SR= "+string(t)+" seconds")// Time required to swing the output
tp=10*t
disp("tp=(VHI-VLO)/SR= "+string(tp)+" seconds")// Pulse width
fmax=1/(2*tp) 
disp("fmax=1/(2*tp) = "+string(fmax)+" Hz")// Maximum frequency of operation of OP-AMP comparator
disp("part(iii)")
B=RB/(RA+RB)
disp("B=RB/(RA+RB)= "+string(B))//Feedback factor
VLTP=(VLO*B)+[VREF*(RA/(RA+RB))]
disp("VLTP=(VLO*B)+[VREF*(RA/(RA+RB))]= "+string(VLTP)+" volts") //   Lower trigger point
VUTP=(VHI*B)+[VREF*(RA/(RA+RB))]
disp("VUTP=(VHI*B)+[VREF*(RA/(RA+RB))]= "+string(VUTP)+" volts") // Upper trigger point
VH=VUTP-VLTP
disp("VH=VUTP-VLTP= "+string(VH)+" volts") //  Hysteresis voltage 
