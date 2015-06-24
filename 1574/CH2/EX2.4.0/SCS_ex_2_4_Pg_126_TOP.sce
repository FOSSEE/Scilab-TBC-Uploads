clc;
// Chapter 2 Switched communication systems
//Example 2.4,page no 126
//given
L=3//relay inductance in henry
R=1500//relay resistance in ohm
Io=20e-3//oparating current in amps
Ir=8e-3//release current in amps

V=50//supply volatage in volts
Im=V/R//maxixmum current in amps
mprintf('maxixmum current is %f mamps \n',Im*1e3)
to=(L/R)*log(1/(1-(Io/Im)))//operate lag in sec
mprintf('operate lag is %f msec \n',to*1000)
tr=(L/R)*log(Im/Ir)//release lag in sec
mprintf('release lag is %f msec \n',tr*1000)
