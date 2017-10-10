//Example 6.3//

P=6*10^3//N //Newton // load on the sample
A0=(10/2)*10^-3;//N/m^2
s=P/(%pi*A0^2)
mprintf("s = %e N/m^2 = 76.4 MPa",s)
mprintf("  (As M= 10^6)")
s1=76.4;//MPa //Megapascal //modulus od elasticity
E=70*10^3;//MPa//Megapascal //Young's Modulus
e=s1/E
mprintf("\n e = %e",e)
//the strain of diameter is calculated as
v=0.33;//given
ed=-v*e
mprintf("\n ed = %e ",ed)
//resulting diameter
d0=10;//mm 
df=d0*(ed+1)
mprintf("\n df = %f mm",df)
//compressive stress
ed1=+3.60*10^-4;//the diameter strain will be of equal magnitude but opposite sign
df1=d0*(ed1+1);
mprintf("\n df1 = %f mm",df1)
