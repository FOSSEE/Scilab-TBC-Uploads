b=250//column width in mm
D=450//column depth in mm
Asc=2*1472//in sq mm
fck=15//in MPa
fy=250//in MPa
ex=200//in mm
ey=150//in mm
//from interaction curve
//for ex=200 mm on x-axis
Pum1=610//in kN
Muy1=120//in kN-m
//for ey=150 mm on y-axis
Pum2=720//in kN
Mux1=106//in kN-m
//(i)
Pu=300//in kN
Mux=Pu*ey/10^3//in kN-m
Muy=Pu*ex/10^3//in kN-m
Puz=(0.45*fck*(b*D-Asc)+0.75*fy*Asc)/10^3//in kN
a=Pu/Puz
an=1+1/0.6*(a-0.2)
b=(Mux/Mux1)^an+(Muy/Muy1)^an//<1
mprintf("The column can take a load of 300 kN with ex=200 mm and ey=150 mm\n")
//(ii)
Pu=500//in kN
Mux=Pu*ey/10^3//in kN-m
Muy=Pu*ex/10^3//in kN-m
a=Pu/Puz
an=1+1/0.6*(a-0.2)
b=(Mux/Mux1)^an+(Muy/Muy1)^an//>1
mprintf("The section is not suitable for a load of 500 kN with ex=200 mm and ey=150 mm\n")
