clc
//Example 2.3
//Maximum shear stress
//------------------------------------------------------------------------------

//Given Data:
//Dimensions
L=0.04//m
b=0.02//m
h=0.1//m
//Load
W=6000//N

//The maximum shear stress may occur at two locations:
//a) Surface of the cantilever (due to bending moment) OR
//b) Midsection of the cantilever (due to transverse shear load)

//On the surface,
//Tmax=(1/2)*(Mc/I); Tmax=maximum shear stress, Mc=bending moment; I=moment of area
I=(b*(h^3))/12
M=W*L
c=h/2
Tmax1=(1/2)*((M*c)/I)

//At the midsection
//Tmax=(3/2)*(V/A); V=Load=W; A=area of cross section
Tmax2=(3/2)*(W/(b*h))

//------------------------------------------------------------------------------
//Printing result file to .txt
res3=mopen(TMPDIR+'3_max_shear_stress.txt','wt')
mfprintf(res3,"The maximum shear stress may occur at two locations:\n")
mfprintf(res3,"\ta) Surface of the cantilever (due to bending moment)\n\t\t OR\n")
mfprintf(res3,"\tb) Midsection of the cantilever (due to transverse shear load)\n")
mfprintf(res3,"\n\nShear stress on the surface is %0.1f MN/m^2",Tmax1*(10^-6))
mfprintf(res3,"\nShear stress at the midsection is %0.1f MN/m^2\n",Tmax2*(10^-6))
Tmax=max(Tmax1,Tmax2)
if Tmax==Tmax1
    mfprintf(res3,"\n\nMaximum shear stress occurs on the surface and is equal to %0.1f MN/m^2",Tmax1*(10^-6))
else
    mfprintf(res3,"\n\nMaximum shear stress occurs at the midsection and is equal to %0.1f MN/m^2",Tmax2*(10^-6))
end
mclose(res3)
editor(TMPDIR+'3_max_shear_stress.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------