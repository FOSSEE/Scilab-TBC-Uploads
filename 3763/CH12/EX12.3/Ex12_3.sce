clear
//
//
//

//Variable declaration
ml=57800     //load(N)
d=10*10**-3    //diameter(m)
D=5      //diameter after fracture(mm)
l=50    //guage length(mm)
L=55    //length after fracture(mm)

//Calculation
ts=ml/(%pi*(d/2)**2)    //ultimate tensile strength(MPa)
de=(L-l)*100/l          //ductility % of elongation(%)
dr=((2*D)**2-D**2)*100/(2*D)**2      //ductility % of reduction(%)
t=(2/3)*ts*de/100        //modulus of toughness(Pa)

//Result
printf("\n ultimate tensile strength is %0.0f  MPa",ts/10**6)
printf("\n modulus of toughness is %0.0f  *10**6 Pa",t/10**6)
