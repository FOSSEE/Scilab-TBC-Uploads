

clc
//initialization of variables
y1in = 0.37 // mole fraction of Ammonia in gas mixture entering
y2in =0.16 // mole fraction of nitrogen in gas mixture entering
y3in = 0.47 // mole fraction of hydrogen in gas mixture entering
x1out = 0.23 // mole fraction of Ammonia in liquid coming out
y1out = 0.01 // mole fraction of ammonia in gas coming out
G0 = 1.20 // Gas glow entering in m^3/sec
Mu = 1.787*0.01*0.3048/2.23 // liquid viscousity in american units
dl = 62.4 // Density of  liquid in lb/ft^3
KG = 0.032 // Overall m.t.c in gas phase in  gas side m/sec
a = 105 // surface area in m^2/m^3
gc = 32.2 // acceleration due to gravity in ft/sec^2
dg = 0.0326 // Density of gas in lb/ft^3
//Molecular weights of Ammonia , N2 , H2
M1 = 17
M2 = 28
M3 = 2
Nu = 1 // Viscousity 
//Calculations
AG0 = (y2in+y3in)*G0/22.4 // Total flow of non absorbed gases in kgmol/sec
ANH3 = y1in*G0/22.4- (y1out*AG0)/(1-y1out) // Ammonia absorbed kgmol/sec
AL0 = ((1-x1out)/x1out)*ANH3 // the desired water flow in kgmol/sec
avg1 = 11.7 // Average mol wt of gas
avg2 = 17.8 // avg mol wt of liquid
TFG = avg1*AG0/(y2in+y3in)//Total flow of gas in kg/sec
TFL = avg2*AL0/(1-x1out)//total flow of liquid in kg/sec
F = 45 // Packing factor
GFF =  1.3*((dl-dg)^0.5)/((F^0.5)*(Nu^0.05))// Flux we require in lb/ft^2-sec
GFF1 = GFF*0.45/(0.3^2) // in kg/m^2-sec (answer wrong in textbook)
Area = TFG/GFF1 // Area of the cross section of tower
dia = (sqrt(4*Area/%pi)) // diameter in metres
HTU = (22.4*AG0/%pi*dia^2)/(KG*a*4)
NTU = 5555
l = HTU*NTU // Length of the tower
//Results
printf("The flow of pure water into the top of the tower %.4f kgmol/sec",AL0)
printf("\n The diameter of the tower is %.1f m",dia)
printf("\n The length of the tower is %.f m",l)









