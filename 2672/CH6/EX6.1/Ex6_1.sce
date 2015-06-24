//Example 6_1
clc;
clear;
close;
format('v',5);
//given data : 
I0=10;//micro A
Vz=100;//V
R=1.5;//kohm
V=45;//V
///Part(a)
I=V/R;//mA(neglecting diode threshold voltage)
//I=I0*(exp(38.4*V)-1)//Diode Current Equation
Vd=(log(I*10^-3/(I0*10^-6)+1))/38.4;//V(Diode Voltage)
//Now calculating I again
I=(V-Vd)/R;//mA
disp(I,"(a) If diode is forward biased, Current(mA)");
//Part(b)
Vd=-V;//V(for reverse polarity of battery)
I=-I0;//micro A
//Voltage drop across resistor neglected
disp(I,"(b) If battery inserted with reverse polarity, Current(micro A)");
//Part(c)
Vz=10;//V
//in forward direction behaviour will remain same
I=V/R;//mA(neglecting diode threshold voltage)
//I=I0*(exp(38.4*V)-1)//Diode Current Equation
Vd=(log(I*10^-3/(I0*10^-6)+1))/38.4;//V(Diode Voltage)
//Now calculating I again
I=(V-Vd)/R;//mA
disp(I,"(c) If diode is forward biased, Current(mA)");
//reverse direction
//load line dataV=30;//
V=30;//V
I=-30;//mA
V1=20;//V//from Load Line
Idash=I*V1/V;///A
disp(Idash,"(c) If battery inserted with reverse polarity, Current(mA)");
//Answer in the book is not accurate,
