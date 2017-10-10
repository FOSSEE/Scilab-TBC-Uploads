clear
//Variable declaration
R_si=0.3// The inside resistance in (m**2 K)/W
R_1=0.040/0.09// The thermal resistance of concrete panels in  (m**2 K)/W
R_2=0.050/0.037// The thermal resistance of insulation in  (m**2 K)/W
R_3=0.012/0.16// The thermal resistance of plaster board in  (m**2 K)/W
R_so=0.07// The outside resistance in (m**2 K)/W

//Calculation
U=1/(R_si+R_1+R_2+R_3+R_so)// U factor in W/(m**2 K)
printf("\n U factor=%0.2f W/(m**2 K)",U)
