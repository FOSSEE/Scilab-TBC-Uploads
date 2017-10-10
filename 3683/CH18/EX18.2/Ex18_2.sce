Pu=1500//in kN
fck=15//in MPa
fy=250//in MPa
l=2.75//unsupported length, in m
//assume 1% steel
Ag=Pu*10^3/(0.4*fck*0.99+0.67*fy*0.01)//in sq mm
L1=225//assuming a square column
L2=Ag/L1//in mm
L2=880//in mm
Asc=0.01*L1*L2//in sq mm
e1=l*10^3/500+L1/30//in mm
e2=l*10^3/500+L2/30//in mm
ep1=0.05*L1//<e1
ep2=0.05*L2//>e2, hence Ok
mprintf("The column is safe on long dimension side but not on short dimension side. As such, the column be checked for eccentricity in short direction.")
