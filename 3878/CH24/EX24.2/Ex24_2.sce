clear
// Variable declaration
V=1// The volume of air in m**3
t=20// The dry bulb temperature in °C
H=60// % saturation
p=101.325// The pressure in kPa
v=7// The velocity in m/s
v_s=0.8419// The specific volume in m**3/kg

// Calculation
m=V/v_s// Mass in kg
Ke=(m*v**2)/2// Kinetic energy in kg/(m s**2)
printf("\n Kinetic energy=%2.1f kg/(m s**2)",Ke)
