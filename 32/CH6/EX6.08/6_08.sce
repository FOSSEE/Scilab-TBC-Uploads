//pathname=get_absolute_file_path('6.08.sce')
//filename=pathname+filesep()+'6.08-data.sci'
//exec(filename)
//Dryness fraction:
x=0.10
//Pressure(in MPa):
p=0.15
//From steam tables:(at 0.15 MPa):
hf = 467.11 
hg = 2693.6
vf = 0.001053
vg = 1.1593
sf = 1.4336
sg = 7.2233 
//Enthalpy(in kJ/kg):
h=hf+x*(hg-hf)
//Specific volume(in m^3/kg):
v=vf+x*(vg-vf)
//Entropy(in kJ/kg.K):
s=sf+x*(sg-sf)
printf("\nRESULT\n")
printf("\nEnthalpy = %f kJ/kg",h)
printf("\nSpecific volume = %f m^3/kg",v)
printf("\nEntropy = %f kJ/kg.K",s)