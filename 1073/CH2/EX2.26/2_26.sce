
//Example 2.26
//Calculate heat loss per metre length
//Given
id=0.1    //internal diameter in[m]
od=0.12    //outer diameter in [m]
T1=358    //Temperature of fluid   [K]
T2=298    //Temperature of surrounding   [K]
t=0.03    //thickness of insulation     [m]
k1=58    //[W/m.K]
k2=0.2    //W/(m.K) insulating material
h1=720    //inside heat transfer coeff [W/sq m .K]
h2=9      //W/sq m.K
r1=id/2    //[m]
r2=od/2    //[m]
r3=r2+t    //[m]
//Heat loss per meter=Q_by_L
Q_by_L=(T1-T2)/(1/(2*%pi*r1*h1)+log(r2/r1)/(2*%pi*k1)+log(r3/r2)/(2*%pi*k2)+1/(2*%pi*r3*h2)); //W/m
printf("Heat loss per metre length of pipe=%f W",Q_by_L)
