clear
//
//
//

//Variable declaration
s=12411*10**3      //stress(Pa)
t=0.0168     //tension
e=0.127     //elongation(cm)
l=15.24     //length(cm)
g=9.8
L=68.04     //load(kg)

//Calculation
E_eff=s/t     //effective modulus(Pa)
S=e/l      
W=E_eff*S
A=L*g/W       //cross sectional area(m**2)

//Result
printf("\n effective modulus is %0.3f  *10**3 Pa",E_eff/10**3)
printf("\n cross sectional area is %0.4f  *10**-4 m**2",A*10**4)
