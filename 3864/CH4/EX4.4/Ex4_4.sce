clear
//

//Initilization of Variables

//Flange (Top)
b1=80 //mm //Width 
t1=40 //mm //Thickness

//Flange (Bottom)
b2=160 //mm //width
t2=40 //mm //Thickness

//web
d=120 //mm //Depth
t3=20 //mm //Thickness

D=200 //mm //Overall Depth
sigma1=30 //N/mm**2 //Tensile stress
sigma2=90 //N/mm**2 //Compressive stress
L=6000 //mm //Span

//Calculations

//Distance of centroid from bottom fibre
y_bar=(b1*t1*(D-t1*2**-1)+d*t3*(d*2**-1+t2)+b2*t2*t2*2**-1)*(b1*t1+d*t3+b2*t2)**-1 //mm

//Moment of Inertia
I=1*12**-1*b1*t1**3+b1*t1*(D-t1*2**-1-(y_bar))**2+1*12**-1*t3*d**3+t3*d*(d*2**-1+t2-(y_bar))**2+1*12**-1*b2*t2**3+b2*t2*(t2*2**-1-(y_bar))**2


//Extreme fibre distance of top and bottom fibres are y_t and y_c respectively

y_t=y_bar //mm
y_c=D-y_bar //mm

//Moment carrying capacity considering Tensile strength 
M1=sigma1*I*y_t**-1*10**-6  //KN-m

//Moment carrying capacity considering compressive strength 
M2=sigma2*I*y_c**-1*10**-6  //KN-m

//Max Bending moment in simply supported beam 6 m due to u.d.l
//M_max=w*L*10**-3*8**-1
//After simplifying further we get
//M_max=4.5*w

//Now Equating it to Moment carrying capacity, we get load carrying capacity
w=M1*4.5**-1 //KN/m

//Result
printf("\n Max Uniformly Distributed Load is %0.3f  KN/m",w)
