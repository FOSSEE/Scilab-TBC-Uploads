
// Variable Declaration
v = 220.0    //Voltage(kV)
f = 50.0     //Frequency(Hertz)
v_o = 1.6    //Over voltage(p.u)
p = 752.0    //Pressure(mm of Hg)
t = 40.0     //Temperature(°C)
m = 0.92     //Surface irregularity factor
r = 1.2      //Conductor radius(cm)
d = 550.0    //Spacing(cm)

// Calculation Section
delta = (0.392*p)/(273+t)                                    //Air density correction factor
V_c = 21.1*delta*m*r*log(d/r)                           //Corona inception voltage(kv/phase)rms
V_ph = (v * v_o)/3**0.5                                      //Phase voltage(kV)
peek = 3*(241/delta)*(f+25)*(r/d)**0.5*(V_ph-V_c)**2*10**-5  //Peek's formula(kW/km)
ratio = V_ph/V_c
F = 0.9                                                      //Ratio of V_ph to V_c
peterson = 3*2.1*f*F*(V_c/log10(d/r))**2*10**-5         //Peterson's formula(kW/km)

// Result Section
printf('Corona loss using Peeks formula , P = %.2f kW/km' ,peek)
printf('Corona loss using Petersons formula , P = %.2f kW/km' ,peterson)
