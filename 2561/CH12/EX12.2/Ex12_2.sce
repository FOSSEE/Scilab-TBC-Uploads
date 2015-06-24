//Ex12_2
clc
Vo=14
disp("Vo= "+string(Vo)+" volts") //  output voltage
f=500 
disp("f = "+string(f)+" Hz")//frequency
IB2=500*10^(-9)
disp("IB2= "+string(IB2)+" A") //base- Current
B=0.5
disp("B="+string(B))//Feedback factor
vf=B*Vo
disp("vf=B*Vo= +"+string(vf)+", -"+string(vf)+" volts") // Feedback voltage
IR=100*IB2// Taking IR as 100 times that of IB2
disp("IR=100*IB2= "+string(IR)+" A") // Current in RB resistor
RB=vf/IR
disp("RB=vf/IR= "+string(RB)+ " ohm")  // resistance
RA=RB*((1/B)-1)// Using formulae B=RA/(RA+RB)
disp("RA=RB*((1/B)-1)= "+string(RA)+ " ohm")  // resistance
RF=100*10^(3)//Choosing RF=100k
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
C1=1/[2*RF*f*log(1+(2*RB/RA))]
disp("C1=1/[2*RF*f*log(1+(2*RB/RA))]= "+string(C1)+" farad") // calculated capacitance value
