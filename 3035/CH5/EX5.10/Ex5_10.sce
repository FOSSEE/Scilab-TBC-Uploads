
// Variable Declaration
v = 220.0    //Voltage(kV)
f = 50.0     //Frequency(Hertz)
p = 752.0    //Pressure(mm of Hg)
t = 40.0     //Temperature(°C)
m = 0.92     //Surface irregularity factor
r = 1.2      //Conductor radius(cm)
d = 550.0    //Spacing(cm)

// Calculation Section
delta = (0.392*p)/(273+t)           //Air density correction factor
V_c = 21.1*delta*m*r*log(d/r)  //Corona inception voltage(kv/phase)rms
V_c_l = 3**0.5*V_c                  //Line-line corona inception voltage(kV)

// Result Section
printf('Corona inception voltage , V_c = %.2f kV/phase' ,V_c)
printf('Line-to-line corona inception voltage = %.2f kV' ,V_c_l)
