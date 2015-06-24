//pathname=get_absolute_file_path('19.08.sce')
//filename=pathname+filesep()+'19.08-data.sci'
//exec(filename)
//Speed of jet plane(in m/s):
Ca=250
//Density of air(in kg/m^3):
d=0.15
//Drag(in kW):
D=6800
//Propulsive efficiency:
np=0.56
//Relative velocity(in m/s):
Ce=2*Ca/np-Ca
//Absolute velocity of jet(in m/s):
C=Ce-Ca
//Mass flow rate(in kg/s):
ma=D/(Ce-Ca)
//Volume flow rate(in m^3/s):
v=ma/d
//Jet diameter(in m):
dj=sqrt(v*4/(2*%pi*Ce))
printf("\n RESULT \n")
printf("\nJet diamter = %f cm",dj*100)