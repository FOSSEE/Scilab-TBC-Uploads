// Calculating the magnetizing current per phase
clc;
disp('Example 10.16, Page No. = 10.44')
// Given Data
// 3 phase delta connected induction motor
P = 75;// Power rating (in kw)
V = 400;// Voltage rating
f = 50;// Frequency (in Hz)
p = 6;// Number of poles
D = 0.3;// Diameter of motor core (in meter)
L = 0.12;// Length of motor core (in meter)
Nss = 72;// Number of stator slots
Nc = 20;// Number of conductors per slot
lg = 0.55;// Length of air gap (in meter)
Kg = 1.2// Gap constraction factor
Coil_Span = 11;// Coil span (slots)
// Calculation of the magnetizing current per phase
q = Nss/(3*p);// Slots per pole per phase
Kd = sin(60/2*%pi/180)/(q*sin(60/(2*4)*%pi/180));// Distribution factor
Ns_pole = Nss/p;// Slots per pole
alpha = 1/Ns_pole*180;// Angle of chording (in degree).  Since the winding is chorded by 1 slot pitch
Kp = cos(alpha/2*%pi/180);// Pitch factor
Kws = Kd*Kp;// Stator winding factor
Ns = Nss*Nc;// Total stator conductors
Ts = Ns/(3*2);// Stator turns per phase
Eb = V;// Stator voltage per phase.  Since machine is delta connected
Fm = Eb/(4.44*f*Ts*Kws);// Flux per pole (in Wb)
A = %pi*D*L/p;// Area per pole (in meter square)
Bav = Fm/A;// Average air gap density (in Wb per meter square)
Bg60 = 1.36*Bav;// Gap flux density at 30 degree from pole axis
ATg = 800000*Bg60*Kg*lg*10^(-3);// Mmf required for air gap (in A)
ATi = 0.35*ATg;// Mmf for iron parts (in A).  Since mmf required for iron parts is 35% of air gap mmf
AT60 = ATg+ATi;// Total mmf (in A)
Im = 0.427*p*AT60/(Kws*Ts);// Magnetizing current per phase (in ampere)
disp(Im,'Magnetizing current per phase (Ampere) =');
//in book answer is 4.56 Ampere.  The answers vary due to round off error
