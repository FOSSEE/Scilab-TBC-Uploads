clear;
clc;
printf("Example 2.3")
//Given
r1=44 // [mm]
r1=r1/1000  //[m]
r2=0.094   // [m]
r3=0.124  // [m]
T1=623  //Temperature at outer surface of wall in[K]
T3=313  //Temperature at outer surface of outer insulation  [K]
k1=0.087  //Thermal conductivity of insulation layer 1..in [W/m.K]
k2=0.064  //Thermal conductivity of insulation layer 2  [W/m.K]
l=1    // Length of pipe   [m]
rm1=(r2-r1)/log(r2/r1)  //log mean radius of insulation layer 1 [m]
rm2=(r3-r2)/log(r3/r2)  //log mean radius of insulation layer 2[m]
//Putting values in following eqn:
Q= (T1-T3)/((r2-r1)/(k1*2*%pi*rm1*l)+(r3-r2)/(k2*2*%pi*rm2*l));
printf("Heat loss per meter pipe is %f W/m",Q)
