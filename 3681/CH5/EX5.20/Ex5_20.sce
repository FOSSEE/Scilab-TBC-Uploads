// Calculating the number of turns and no load current
clc;
disp('Example 5.20, Page No. = 5.101')
// Given Data
E = 6600;// Primary winding voltage (in volts)
f = 60;// Frequency (in Hz)
Ai = 22.6*10^(-3);// Area of cross section (in meter square)
Bm = 1.1;// Maximum flux density of core (in Wb per meter square)
Af = 1.52;// Amplitude factor
Tp = 800;// Primary winding turns
l = 2.23;// Mean length (in meter)
mmf =232;// mmf per meter (in A per meter)
n = 4;// Number of lap joints
Gs = 7.5*10^(3);// Specific gravity of plates
Ls = 1.76;// Specific loss (in W per kg)
// Calculation of the number of turns
Tp = E/(4.44*f*Ai*Bm);// Number of turns
disp(Tp,'(a) Number of turns=');
// Calculation of the no load current
mmf_iron = mmf*l;// Mmf required for iron parts
mmf_joints = 4*(1/4)*mmf;// Mmf required for joints.  Since lap joints takes 1/4 times reactive mmf as required per meter of core
AT0 = mmf_iron+mmf_joints;// Total magnetising mmf (in A)
Kpk = Af*2^(1/2);// Peak factor
Im = AT0/(Kpk*Tp);// Magnetising current (in A)
W = Ai*l*Gs;// Weight of core (in kg)
Pi = Ls*W;// Iron loss (in W)
Il = Pi/E;// Loss component of no load current (in A)
I0 =(Im*Im+Il*Il)^(1/2);// No load current (in A)
disp(I0,'(b) No load current (Ampere)=');
//in book answers are 1100 and 0.333 (A) respectively.  The provided in the textbook is wrong
