mu0 = 4*%pi*10^-7;
A = 0.0025; //cross sectional area of the coil
//dimensions of the coil (in meters)
Lg = 0.002; //air gap length (in meters)
Lbd = 0.025; 
Lde = 0.1;
Lef = 0.025;
Lfk = 0.2;
Lbc = 0.175;
Lcab = 0.5;

Lbghc = 2*(Lbd + Lde + Lef + (Lfk/2)) - Lg;//length of the ferromagnetic material involved here

phig = 4*10^-4; //air gap flux (in Wb)
Bg = phig/A ; //air gap flux density (in tesla)
Hg = Bg/mu0 ; //feild intensity of the air gap 
mmfg = Hg*Lg ; //mmf produced in the air gap (in At)

Bbc = 1.38 ; //flux density corresponding to cast steel

Hbghc = 125; //field intensity corresponding to flux density of 0.16T in the steel
mmfbghc = Hbghc*Lbghc ; // mmf corresponding to bghc

mmfbc = mmfg + mmfbghc ; //mmf across path bc
Hbc = mmfbc/Lbc;
phibc = Bbc*A ; //flux produced in bc  

phicab = phig + phibc; //total fiux existing in leg cab 
Bcab = phicab/0.00375; //flux density
Hcab = 690; 
mmfcab = Hcab*Lcab; //mmf in leg cab

mmf = mmfbc + mmfcab ; //mmf produced by the coil

disp(mmf,"mmf produced by the coil(in At) = ")




