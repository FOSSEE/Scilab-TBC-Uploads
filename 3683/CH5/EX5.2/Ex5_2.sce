sigma_cc=5//in MPa
sigma_sc=190//in MPa
Asc=6*0.785*20^2//six 20 mm dia bars, in sq mm
b=250//width, in mm
D=400//depth, in mm
Ag=b*D//in sq mm
Ac=Ag-Asc//in sq mm
P=sigma_cc*Ac+sigma_sc*Asc//in N
mprintf("Permissible load on the column = %f kN\n", P/10^3)
//design of links
dia=20/4//in mm
//as this is less than 6
dia=6//in mm
//spacing of links
s1=b//in mm
s2=16*20//in mm
s3=48*dia//in mm
s=min(s1,s2,s3)
mprintf("Provide %d mm dia links at spacing equal to least of (i)Least lateral dimension = %d mm, (ii) 16 times longitudinal bar dia = %d mm, (iii) 48 times link bar dia = %d mm, i.e., 250 mm\nHence, spacing or pitch = %d mm\n",dia,b,16*20, 48*dia,s)
Pc=Asc*100/(b*D)//percentage steel
mprintf("Percentage of steel is in between 0.8 to 4 as prescribed by IS code")
