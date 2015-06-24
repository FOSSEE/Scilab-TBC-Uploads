
//(Threaded Joints) Example 7.21
//Maximum internal pressure MAXP (MPa)
MAXP = 2
//Minimum internal pressure MINP (MPa)
MINP = 0
//Diameter of the circle on which pressure acts D (mm)
D = 400
//Assume the stiffness of the bolts to be 1N/mm kb
kb = 1
//Calculate the stiffness of the parts kc (N/mm)
kc = 4 * kb
//Ultimate tensile strength Sut (N/mm2)
Sut = 900
//Yield strength Syt (N/mm2)
Syt = 700
//Endurance limit in bending Sdash (N/mm2)
Sdash = 300
//Fatigue stress concentration factor Kf
Kf = 2.2
//Factor of safety fs
fs = 1.5
//Number of bolts N
N = 8
//Assume expected reliability (%)
reliability = 90
//Assume diameter of the bolt to be less than 7.5mm for Kb to be 1
d = 1
//As Ka is incorporated into Kf, assume the assembly to be ground
//This is just to obtain a random value of Ka
op = 1
