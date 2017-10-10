// Exa 14.3

clc;
clear all;

// Given data

R1=2.2;// k Ohms
Rf=10;// k Ohms
R=120;// (Ra=Rb=Rc) k Ohms
E=5; // Volts
Vcc=15; // Volts
Rt=120; //  k Ohms at reference temperature of 25 degree celsius
Tco=- 1; // Temperature co-efficient in  K/degree celsius

// Given data

disp(" At 25 degree celsius, Ra=Rb=Rc=120 K. Therefore, the bridge is balanced  and Va=Vb.Therefore, Vo=0.");
Delta_R=Tco*(0-25);
// For 0 degree celsius
printf('  At 0 degree celsius the change delta_R in the resistance of the thermistor is %d k Ohms \n ',Delta_R);

Vo=-(Delta_R)*E*Rf/(2*(2*R+Delta_R)*R1);
printf(' The output voltage at 0 degree celsius = %.2f Volts \n ',Vo);
// For 100 degree celsius
Delta_R1=Tco*(100-25);
Vo1=-(Delta_R1)*E*Rf/(2*(2*R+Delta_R1)*R1);

printf(' The output voltage at 100 degree celsius = %.2f Volts \n ',Vo1);
