//Chapter 10_Special Purpose Amplifiers
//Caption : Class B Power Amplifier
//Example10.3: A class-B audio power amplifier has a supply voltage of  abs(Vcc)=15V. The closed loop gain Av=50 and the amplifier has to deliver 10W of power into an 8 ohm load.Find:
//a)the peak output voltage swing
//b)the peak output current swing
//c)the input signal required(rms)
//d)the total power from the power supply
//e)the power dissipated in the amplifier
//f)the power conversion efficiency
clear;
clc;
//a)Solution:
Po=10;//power in Watt
Rl=8;//load resistance in Ohm;
Vorms=sqrt(Po*Rl);// since output power Po=Vorms^2/Rl
Vom=sqrt(2)*Vorms;//peak output voltage swing
disp('V',abs(Vom),'The peak output Voltage swing:')
//b)Solution:
Iom=Vom/Rl;
disp('A',abs(Iom),'The peak output current swing is:')
//c)Solution:
Av=50;//closed loop gain
Vsrms=Vorms/Av;
disp('V',Vsrms,'The input rms signal required is:')
//d)Solution:
Vcc=15;//absolute value of poer supply in volt
Pin=2*Vcc*Iom/%pi;// since Iorms*2^(1/2)=Iom
disp('W',Pin,'The total power from power supply is:')
//e)Solution:
Pd=(2/%pi)*Vcc*sqrt(2*Po/Rl)-Po;
disp('W',Pd,'The power dissipated in the amplifier is:')
//f)Solution:
n=(Po/Pin)*100;
disp('%',n,'The power conversion efficiency is:')
//Note:
//Vcc,Vom and Iom can be of either polarity but here only absolute value is considered and calculated