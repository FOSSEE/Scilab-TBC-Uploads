clc
clear

//input
//three impedances are connected in delta each containing a resistor and an inductor
r=25;//resistance in ohms
l=0.06;//inductance in henry
v=415;//3 phase supply voltage in volts
f=50;//supply frequency in hertz
//three capacitors are connected across the same supply in star
c=200*(10^-6);//the capacitance in farad

//calculations
//for delta connection
xl=2*%pi*f*l;//inductive reactance in ohms
zp=((r^2)+(xl^2))^0.5;//impedance per phase in ohms
ip=v/zp;//phase current in amperes
il=ip*(3^0.5);//line current in amperes
//il lags on ip by 30degrees.so the angle between the line current and ilne voltage is 30+phase angle in degrees
phi=30+((180/%pi)*acos(r/zp));//phase angle in degrees
cosp=(r/zp);//phase angle in radians
//for star connection
vp=v/(3^0.5);//phase voltage in volts
xc=1/(2*%pi*f*c);//capacitive reactance in ohms
ic=vp/xc;//current in amperes
//ic leads the line voltage by 60degrees
cosP=cos((60*%pi)/180);//phase angle in radians
ii=(il*cos((phi*%pi)/180))+(ic*(cosP));//in-phase components in amperes
iq=((-il*sin((phi*%pi)/180))+(ic*sin(acos(cosP))));//quadrature component in amperes
it=((ii^2)+(iq^2))^0.5;//total current in amperes
PHI=(180/%pi)*acos(ii/it);//phase angle in degrees

//output
mprintf('the original line current was %3.0f A lagging on the line voltage by %3.0f degrees and the final current is %3.1f A lagging on the line voltage by %3.1f degrees',il,phi,it,PHI)
