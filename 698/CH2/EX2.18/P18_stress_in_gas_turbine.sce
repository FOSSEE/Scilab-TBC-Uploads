clc
//Example 2.18
//Stress in gas turbine
//------------------------------------------------------------------------------

//Given data:
//Stresses
//Radial Stress
Sx=20* (10^6) // MPa
//Tangential Stress
Sy=50* (10^6) // MPa

res18=mopen(TMPDIR+'18_stress_in_gas_turbine.txt','wt')

mfprintf(res18,'Given \n\tSx= 20 MPa and \n\tSy= 50 MPa\n\n')

Sn_max=Sy

mfprintf(res18,'Maximum normal stress\n\tSn(max)=Sy\n\n')

Tmax=(Sn_max-0)/2

mfprintf(res18,'Maximumshear stress\n\tTmax=(Sn_max-0)/2\n\t=%0.1f MPa (shear)',Tmax*(10^-6))

mclose(res18)
editor(TMPDIR+'18_stress_in_gas_turbine.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------