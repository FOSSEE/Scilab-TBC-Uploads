//first we define all parameters for the transistor and the circuit
Z0=50; //characteristic imedance of the system

Vcc=3.6; //power supply voltage
Vce=2; //collector voltage 
Ic=10e-3; //collector current

T=300; //ambient temperature (300K)

//transistor parameters (they are very similar to BFG403W)
beta=145;    // current gain
Is=5.5e-18;  // saturation current
VAN= 30;     // forward Early voltage
tau_f=4e-12; // forward transition time
rb=125;      // base resistance
rc=15;       // collector resistance
re=1.5;      // emitter resistance
Lb=1.1e-9;   // base inductance
Lc=1.1e-9;   // collector inductance
Le=0.5e-9;   // emitter inductance
Cjc=16e-15;  // collector junction capacitance at zero applied voltage
mc=0.2;      // collector junction grading coefficient
Cje=37e-15;  // emitter junction capacitance at zero applied voltage
me=0.35;     // emitter junction grading coefficient
phi_be=0.9;  // base-emitter diffusion potential
phi_bc=0.6;  // base-collector diffusion potential
Vbe=phi_be;  // base-emitter voltage

// some physical constants
k=1.38e-23;   // Boltzmann's constant
q=1.6e-19;    // elementary charge
VT=k*T/q;     // thermal potential

disp('DC biasing parameters');

Ib=Ic/beta;
disp("Amperes",Ib,"Base current");

Rc=(Vcc-Vce)/Ic;
disp("Ohms",Rc,"Collector resistance");

Rb=(Vcc-Vbe)/Ib;
disp("Ohms",Rb,"Base resistance");


r_pi=VT/Ib;
disp("Ohms",r_pi,"Rpi");

r0=VAN/Ic;
disp("Ohms",r0,"R0");

gm=beta/r_pi;
disp("Mho",gm,"Gm");

Vbc=Vbe-Vce;
Cmu=Cjc*(1-Vbc/phi_bc)^(-mc);
disp("Farads",Cmu,"base collector capacitance");

if(Vbe<0.5*phi_be)
   Cpi_junct=Cje*(1-Vbe/phi_be)^(-me);
else
   C_middle=Cje*0.5^(-me);
   k_middle=1-0.5*me;
   Cpi_junct=C_middle*(k_middle+me*Vbe/phi_be);
end;

disp("Farads",Cpi_junct,"Junction Capacitance");

Cpi_diff=Is*tau_f/VT*exp(Vbe/VT);
disp("Farads",Cpi_diff,"Differential capacitance");

Cpi=Cpi_junct+Cpi_diff;
disp("Farads",Cpi,"Total Capacitance");

C_miller=Cmu*(1+gm*r_pi/(r_pi+rb)*Z0*r0/(r0+rc+Z0));
disp("Farads",C_miller,"Miller Capacitance");

C_input=Cpi+C_miller;
disp("Farads",C_input,"Total input capacitance");