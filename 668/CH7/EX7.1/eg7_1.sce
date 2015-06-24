Ie = 1.5*10^-3;
Cje = 2*10^-12;
Wb = 0.4*10^-4;
Db = 60;
Wdc = 2*10^-4;
Rc = 30;
Ct = 0.4*10^-12;
vs = 5*10^6;
kT = 26*10^-3; //in eV
q = 1.6*10^-19;
Re = kT/Ie;
disp(Re,"The emitter resistance (in ohm) = ")
Te = Re*Cje;
disp(Te, "Te (in s) = ")
Tt = Wb^2/2/Db;
disp(Tt,"base transit time (in s) = ")
Tc = 0.5*Wdc/vs;
disp(Tc,"collector transit time (in s) = ")
Tcc = Rc*Ct;
disp(Tcc,"collector charging time (in s) = ")
Tec = Te+Tt+Tc+Tcc;
disp(Tec,"total time (in s) = ")
ft = (2*%pi*Tec)^-1;
disp(ft,"cutoff frequency (in Hz) = ")