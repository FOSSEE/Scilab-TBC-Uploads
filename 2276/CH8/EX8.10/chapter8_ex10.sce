clc
clear

//input
v=415;// three phase supply voltage in volts
f=50;//supply frequency in hertz
//the power taken from this supply is taken by a delta connected load with each branch consisting a resistor and an inductance is measured by two wattmeters
r=20;//resistance in ohms
l=0.06;//inductance in henry

//calculations
xp=2*%pi*f*l;//reactance per phase in ohms
zp=((r^2)+(xp^2))^0.5;//impedance per phase in ohms
ip=v/zp;//current per phase in amperes
il=ip*(3^0.5);//line current in amperes
phi=acos(r/zp);//phase angle in radians
phi1=(30*%pi)/180;//30degrees converted into radians
w1=(v*il*cos(phi+phi1))/1000;//reading of wattmeter 1 and 30 degrees is added with correspondence to phasor diagram in kilowatts
w2=(v*il*cos(phi-phi1))/1000;//reading of wattmeter 2 and 30 degrees is added with correspondence to phasor diagram in kilowatts

mprintf('the readings on the two wattmeters will be %3.3f kW and %3.2f kW',w1,w2)
