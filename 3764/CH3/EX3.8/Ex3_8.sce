clc
//

//Variable declaration
Tp=44.1
phyF=8.59

// Calculation
// Elastic Unloading
Tmax=((44.1)*(1.125))/2.02
Tmin=(Tmax)*(0.75/1.125)
phyl=(((44.1*(10**3)*60)*(360/(2*%pi)))/((2.02)*(11.2*(10**6)))**2)

phy=phyF-phyl

// Result
printf("\n Case(a: Residual stress = %1f kip.in' ,0)
printf("\n Case(b: Permanent angle of twist= %1f degree ' ,phy)
