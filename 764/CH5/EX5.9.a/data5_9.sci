
//(Design against Fluctuating Load) Example 5.9
//Refer Fig.5.34 on page 164
//Bending moment acting at section X-X Mb (kN-m)
Mb = 500
//Ultimate tensile strength of shaft material Sut (MN/m2)
Sut = 500
//Minimum value of N is Nmin
Nmin = (10^3)
//Maximum value of N is Nmax
Nmax = (10^6)
//Yield point of shaft material Syt (MN/m2)
Syt = 350
//Endurance limit in bending for specimen Sdash (MN/m2)
Sdash = 210
//Specimen shaft diameter ds (mm)
ds = 7.5
//Notch sensitivity factor q
q = 0.8
//Fillet radius rf (mm)
rf = 8
//Shaft diameter d (mm)
d = 300
//Theoretical stress concentration table
ratioVal = {0.025 0.05 0.1}
Ktval = {2.6 2.05 1.66}
//Reliability (%)
reliability = 90
//Operation
    //Nomenclature: 
    //1 - Ground
    //2 - Machined or cold drawn
    //3 - Hot-rolled
    //4 - Forged
op = 2
