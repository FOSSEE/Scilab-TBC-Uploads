clc
//Example 4.4
//Stress in spring clip

//------------------------------------------------------------------------------

//Given data
//Diameter of spring clip
d=0.025 // m
//Area of cross section
A=(%pi/4)* d^2
//Force acting
P=450 //N
//Bending moment
M=P*0.125 //N-m


res4=mopen(TMPDIR+'4_stress_in_spring_clip.txt','wt')
mfprintf(res4,'(a) Maximum bending stress occurs at inside fibre of sections with\nri=75mm (refer figure 4.5)\n\n')

ro=0.1 //m
ri=0.075 //m
rn=(1/4)* (sqrt(ro) + sqrt(ri))^2
mfprintf(res4,'(b)\trn=(1/4)* (sqrt(ro) + sqrt(ri))^2\n\t=%0.5f m\n\n',rn)

R=ri+ d/2
e=R-rn
mfprintf(res4,'(c)\te=R-rn =%0.4f m\n\n',e)

hi=0.01205
Si=(M*hi)/(A*e*ri)
mfprintf(res4,'(d)\tSi=(M*hi)/(A*e*ri) =%0.1f MN/m^2\n\n',Si* 10^-6)

mfprintf(res4,'(e)Maximum shear stress occurs at every point from A to B and from C to D\n')
//Maximum shear stress
Smax=Si/2
mfprintf(res4,'Maximum shear stress=%0.1f MN/m^2',Smax* 10^-6)

mclose(res4)
editor(TMPDIR+'4_stress_in_spring_clip.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------