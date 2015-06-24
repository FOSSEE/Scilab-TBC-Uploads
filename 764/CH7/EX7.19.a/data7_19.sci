
//(Threaded Joints) Example 7.19
//Maximum external force Pmax (kN)
Pmax = 10
//Minimum external force Pmin (kN)
Pmin = 0
//Assume the stiffness of the bolts to be 1N/mm kb
kb = 1
//Calculate the stiffness of the parts kc
kc = 3 * kb
//Overload percentage load (%)
load = 50
//Yield tensile strength of 50C4 Syt (N/mm2)
Syt = 460
//Ultimate tensile strength of 50C4 Sut (N/mm2)
Sut = 660
//Fatigue stress concentration factor Kf 
Kf = 2.2
//Expected reliability (%)
reliability = 90
//Factor of safety fs
fs = 2
//Assume diameter of the bolt to be less than 7.5mm for Kb to be 1
d = 1
//As Ka is incorporated into Kf, assume the assembly to be ground
//This is just to obtain a random value of Ka
op = 1
