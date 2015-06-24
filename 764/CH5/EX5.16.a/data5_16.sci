
//(Design against Fluctuating Load) Example 5.16
//Refer Fig.5.51 on page 174
//Bar groove depth g (mm)
g = 2
//Theoretical stress concentration factor Kt
Kt = 1.8
//Notch sensitivity factor q
q = 0.95
//Outer diameter of the bar d (mm)
d = 30
//Ultimate tensile strength of the bar Sut (MPa)
Sut = 1250 
//Endurance limit in reversed bending Sdash (MPa)
Sdash = 600
//Minimum value of N is Nmin
Nmin = (10^3)
//Maximum value of N is Nmax
Nmax = (10^6)
//Number of cycles N
N = 10^5
reliability = 90
//Operation
    //Nomenclature: 
    //1 - Ground
    //2 - Machined or cold drawn
    //3 - Hot-rolled
    //4 - Forged
op = 1
//Assume Pmax = 1N
Pmax = 1
Pmin = 0

