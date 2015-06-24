//pathname=get_absolute_file_path('13.03.sce')
//filename=pathname+filesep()+'13.03-data.sci'
//exec(filename)
//Pressure of steam entering(in bar):
p1=12
//Pressure at exit(in bar):
p2=6
//Mass flow rate(in kg/s):
m1=5
m2=m1
m3=m1
//Exit velocity(in m/s):
C3a=500
//From steam tables:
h1=3045.8 //kJ/kg
h2=2900.05 //kJ/kg
s2=7.0317 //kJ/kg.K
s1=s2
s3=s2
v2=0.3466 //m^3/kg
h3=2882.55 //kJ/kg
v3=0.3647 //m^3/kg
//For superheated steam:
n=1.3
//Pressue at state 2(in bar):
p2=p1*(2/(n+1))^(n/(n-1))
//Velocity at throat(in m/s):
C2=sqrt(2*(h1-h2)*10^3)
//Cross-sectional area at throat(in m^2):
A2=m2*v2/C2
//Ideal velocity at exit(in m/s):
C3=sqrt(2*(h1-h3)*10^3)
//Cross-sectional area at exit(in m^2):    
A3=m3*v3/C3a
//Coefficient of velocity:
r=C3a/C3
printf("\nRESULT\n")
printf("\nCross-sectional area at throat = %f m^2",A2)
printf("\nCross-sectional area at exit = %f m^2",A3)
printf("\nCoefficient of velocity = %f",r)