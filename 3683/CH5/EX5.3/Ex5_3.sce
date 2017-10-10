sigma_cc=5//in MPa
sigma_sc=130//in MPa
b=300//width, in mm
D=400//depth, in mm
P=1000//axial load, in kN
Ag=b*D//in sq mm
Asc=(P*10^3-sigma_cc*Ag)/(sigma_sc-sigma_cc)//in sq mm
//provide 25 mm dia bars
n=round(Asc/(0.785*25^2))
mprintf("Provide %d no. 25 mm dia bars\n", n)
//design of links
dia=20/4//in mm
//provide 8 mm dia links (available as per market size)
dia=8//in mm
//spacing of links
s1=b//in mm
s2=16*25//in mm
s3=48*dia//in mm
s=min(s1,s2,s3)
mprintf("Provide %d mm dia links at spacing equal to least of (i)Least lateral dimension = %d mm, (ii) 16 times longitudinal bar dia = %d mm, (iii) 48 times link bar dia = %d mm, i.e., 300 mm\nHence, spacing or pitch = %d mm\n",dia,b,16*25,48*dia,s)
