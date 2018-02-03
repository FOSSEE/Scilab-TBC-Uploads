clear
//
//

//Initilization of Variables

F=40*10**3 //N //Shear Force
M=20*10**6 //Bending Moment

//Rectangular section
b=100 //mm //Width
d=200 //mm //Depth

x=20 //mm //Distance from Top surface upto point
y=80 //mm //Distance from point to Bottom

//Calculations

I=1*12**-1*b*d**3 //mm**4 //M.I

//At 20 mm Below top Fibre
f_x=M*I**-1*y //N/mm**2 //Stress

//Assuming sagging moment ,f_x is compressive p_x=f_x=-24 //N/mm**2
f_x=-24 //N/mm**2
p_x=-24

//Shearing stress
q=F*(b*I)**-1*(b*x*(b-x*2**-1)) //N/mm**2

//Direct stresses

p_y=0 //N/mm**2

p1=(p_x+p_y)*2**-1+(((p_x+p_y)*2**-1)**2+q**2)**0.5 //N/mm**2
p2=(p_x+p_y)*2**-1-(((p_x+p_y)*2**-1)**2+q**2)**0.5 //N/mm**2

//Result
printf("\n Directions of principal stresses at a point below 20mm is: %0.2f  N/mm**2",p1)
printf("\n                                                            %0.2f  N/mm**2",p2)
