
//(Threaded Joints) Example 7.20
//Number of bolts N
N = 2
//Engine speed n (rpm)
n = 2000
//Length of stroke l (mm)
l = 100
//Length of connecting rod c (mm)
c = 200
//Mass of reciprocating parts m (kg)
m = 5
//Overload percentage load (%)
load = 50
//Assume the stiffness of the bolts to be 1N/mm kb
kb = 1
//Calculate the stiffness of the parts kc
kc = 4 * kb
//Yield tensile strength of chromium-molybdenum steel Syt (N/mm2)
Syt = 450
//Ultimate tensile strength of chromium-molybdenum steel Sut (N/mm2)
Sut = 600
//Fatigue stress concentration factor Kf 
Kf = 3.0
//Expected reliability (%)
reliability = 90
//Factor of safety fs
fs = 2
//Assume diameter of the bolt to be less than 7.5mm for Kb to be 1
d = 1
//As Ka is incorporated into Kf, assume the assembly to be ground
//This is just to obtain a random value of Ka
op = 1
//Inclination of connecting rod to the line of stroke theta (degree)
theta = 0
