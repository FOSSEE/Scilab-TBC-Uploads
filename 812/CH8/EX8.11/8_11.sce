//Diameter and head//
pathname=get_absolute_file_path('8.11.sce')
filename=pathname+filesep()+'8.11-data.sci'
exec(filename)

//Value of K*B^2:
K_B=Q/(%pi/4*D^2)*sqrt(0.5*d1/g/d2/h)
//Reynods number:
ReD1=4/%pi*Q/D/v
//By trial and error method, the value of beta is fixed at:
betta=0.66;
//K is then:
K=K_B/betta^2
//Diameter of orifice plate(in m):
Dt=betta*D
//Value of p3-p2(in N/m^2):
P1=d1*Q^2/(%pi/4*D^2)^2*(1/0.65/betta^2-1)
//Value of p1-p2(in N/m^2):
P2=d2*g*h
//Head loss between sections 1 and 3(in N-m/kg):
hLT=(P2-P1)/d1
//Expressing the permanent pressure as a fractio of the meter differential:
C=(P2-P1)/P2
printf("\n\n\nRESULTS\n\n")
printf("\n\nDiameter of the orifice: %.3f m\n\n",Dt)
printf("\n\nHead loss between secions 1 and 3: %.3f N-m/kg\n\n",hLT)
