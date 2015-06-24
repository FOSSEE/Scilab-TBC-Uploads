// calculate ac load line saturation, cutoff points, maximum peak-to-peak output voltage  
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-2, page 384

clear;clc; close;

// Given data
R1=490;// in ohms
R2=68;// in ohms
Rc=120;// in ohms
Re=20;// in ohms
Vcc=30;// in volts
Rl=180;// in ohms
Vc=12;// in volts

// Calculations
Vb=R2*Vcc/(R2+R1);// in volts
Ve=Vb-0.7;
Ie=Ve/Re;// in amperes
Icq=Ie;// dc collector current in amperes
Vceq=Vc-Ve; // dc collector-emitter voltage in volts
rc=Rc*Rl/(Rc+Rl);// rc=Rc||Rl
Icsat=Icq+Vceq/rc;// ac saturation current in amperes
Vcecutoff=Vceq+(Icq*rc);// in volts
// as supply voltage is 30 volts MPP<30
MPP=2*Vceq ; // as (Icq*rc)>Vceq
disp("Amperes",Icsat,"ac load line saturation")
disp("Volts",Vcecutoff,"ac cutoff voltage")
disp("Volts",MPP,"maximum peak-to-peak output voltage=")

// Results
// ac load line saturation is 273 mAmperes
// ac voltage at cutoff point is 19.7 volts
// maximum peak-to-peak output voltage is 18 volts 
