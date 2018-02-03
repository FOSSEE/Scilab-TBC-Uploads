//Tension in the cable and reaction at axles
//Refer fig.3.25 (a)&(b)
//assume T as tension in the rope parallel to track
//applying equilibrium conditions
T=60*sind(60)  //kN
//applying moment equilibrium condition about upper axle reaction point we get
R1=(-T*600+60*800*sind(60)+60*600*cosd(60))/1200  //kN
R2=60*cosd(60)-R1  //kN
printf("Required values are:-\nT=%.3f kN\nR1=%.3f kN\nR2=%.2f kN",T,R1,R2)

