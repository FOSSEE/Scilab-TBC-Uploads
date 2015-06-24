//pathname=get_absolute_file_path('12.13.sce')
//filename=pathname+filesep()+'12.13-data.sci'
//exec(filename)
//Diameter of HP, LP and IP cylinder(in m):
dhp=0.25
dip=0.40
dlp=0.85
//MEPs of the cylinders(in kPa):
mephp=0.5*10^3
mepip=0.3*10^3
meplp=0.1*10^3
//Pressure at which steam is supplied(in kPa):
p1=1.5*10^3
//Pressure at exhaust(in kPa):
p4=25
//Cut-off occurs at:
r1=0.60
//Area of HP cylinder(in m^2):
AHP=%pi*dhp^2/4
//Area of IP cylinder(in m^2):
AIP=%pi*dip^2/4
//Area of LP cylinder(in m^2):
ALP=%pi*dlp^2/4
//Mep of HP referred to LP cylinder(in kPa):
mep1=mephp*AHP/ALP
//Mep of IP referred to LP cylinder(in kPa):
mep2=mepip*AIP/ALP
//Overall mep referred to LP cylinder(in kPa):
mept=mep1+mep2+meplp
//Overall expansion ratio:
r=ALP/(r1*AHP)
//Hypothetical mep(in kPa):
mep=p1/r*(1+log(r))-p4
//Overall diagram factor:    
d1=mept/mep
//% of HP cylinder output:
P1=mep1/mept*100
//% of HP cylinder output:
P2=mep2/mept*100
//% of HP cylinder output:
P3=meplp/mept*100
printf("\nRESULT\n")
printf("\nActual mep referred to LP = %f kPa",mept)
printf("\nHypothetical mep referred to LP = %f kPa",mep)
printf("\nOverall diagram factor = %f",d1)
printf("\nPercentage of HP, IP and LP cylinder outputs = %f, %f and %f percent",P1,P2,P3) 