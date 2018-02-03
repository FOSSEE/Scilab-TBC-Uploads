//Minimum weight of hollow cylinder
//Refer fig.3.26 (a),(b)&(c)
O1O2=400+600  //mm
O2D=1600-400-600  //mm
alpha=acosd(O2D/O1O2)  //degree
//considering equilibrium of spheres 
//Taking moment about O2
R1=(600)/(1000*sind(alpha))  //kN
R2=R1  //kN
R3=1+3  //kN
//Assume minimum weight W.During tipping there will be no reaction at point B
//Taking moment about A
W=(0.75*1000*sind(53.13))/(800)  //kN
printf("Minimum weight of hollow cylinder is W=%.2f kN",W)
