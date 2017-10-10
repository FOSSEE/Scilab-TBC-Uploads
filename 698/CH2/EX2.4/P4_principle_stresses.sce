clc
//Example 2.4
//Normal and shear stresses

//------------------------------------------------------------------------------
//Given Data:
//Stresses
Sx=-400//N/m^2(compressive)
Sy=-1200//N/m^2(compressive)
Txy=300//N/m^2

res4=mopen(TMPDIR+'4_principle_stresses.txt','wt')
mfprintf(res4,"\tSn_max=(Sx/2)+sqrt(((Sx/2)^2)+(Txy^2))")
mfprintf(res4,"\n\tSn_min=(Sx/2)-sqrt(((Sx/2)^2)+(Txy^2))")
mfprintf(res4,"\n\tT_max=[Sn_max+Sn_min]/2\n\n")

//------------------------------------------------------------------------------

//Maximum normal stress
Sn_max=((Sx+Sy)/2)+sqrt((((Sx-Sy)/2)^2)+((Txy)^2))
mfprintf(res4,"The maximum normal stress is %d N/m^2 and its nature is",Sn_max)
nature(Sn_max)

//Minimum normal stress
Sn_min=((Sx+Sy)/2)-sqrt((((Sx-Sy)/2)^2)+((Txy)^2))
mfprintf(res4,"\n\nThe minimum normal stress is %d N/m^2 and its nature is",Sn_min)
nature(Sn_min)

//Third principal stress=0
Sz=0

//Maximum shear stress
Tmax=(Sn_min-Sz)/2
mfprintf(res4,"\n\nThe maximum shear stress is %d N/m^2",Tmax)
mclose(res4)
editor(TMPDIR+'4_principle_stresses.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------