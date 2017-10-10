sigma_cc=4//in MPa
sigma_sc=130//in MPa
Asc=6*0.785*12^2//six 12 mm dia bars, in sq mm
D=200//dia of column, in mm
Ag=0.785*D^2//in sq mm
Ac=Ag-Asc//in sq mm
P=sigma_cc*Ac+sigma_sc*Asc//in N
dia=6//dia of links used, in mm
//spacing of links
s1=D//in mm
s2=16*12//in mm
s3=48*dia//in mm
s=min(s1,s2,s3)
mprintf("Permissible load on the column = %f kN\nProvide %d mm dia links at spacing equal to least of (i)Least lateral dimension = %d mm, (ii) 16 times longitudinal bar dia = %d mm, (iii) 48 times link bar dia = %d mm, i.e., %d mm\nHence, spacing or pitch = %d mm", P/10^3, dia,D,16*12, 48*dia,s,s)
