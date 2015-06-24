//chapter9
//example9.21
//page171

Vmax=120 // V
Vmin=80 // V
Vz=50 // V
R_L=10 // kilo ohm
R1=5 // kilo ohm

// zener diode is on for Vmax and Vmin both since they are > Vz

// for max Iz
    V_R1=Vmax-Vz
    I=V_R1/R1 // current through R1
    I_L=Vz/R_L // current through load
    // by Kirchoff first law I=I_L+Iz so applying it we get
    Iz_max=I-I_L
    
// for min Iz
    V_R1_dash=Vmin-Vz
    I_dash=V_R1_dash/R1// current through R1
    I_L_dash=Vz/R_L // current through load
    // by Kirchoff first law I=I_L+Iz so we get
    Iz_min=I_dash-I_L_dash
    
printf("maximum zener current = %.3f mA \n",Iz_max)
printf("minimum zener current = %.3f mA \n",Iz_min)
