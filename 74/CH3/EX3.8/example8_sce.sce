//chapter 3
//example 3.8
//page 136, figure 3.35
F=1000;
R1=1000;Cf=.1*10^-6;
Vin=5;//voltage in V
T=1/F;//time period
disp(T)// in second
Vout=(Vin*T)/(2*R1*Cf);// change in output voltage 
disp(Vout)//given saturation level is 14V hence output will not saturate will be triangular in nature
S=2*%pi*F*Vin;// slew rate 
disp(S)//minimum slew rate