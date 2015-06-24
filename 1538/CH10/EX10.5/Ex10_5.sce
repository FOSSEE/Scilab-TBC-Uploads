//example-10.5
//page no-321
//given
//dimension of steel specimen
l=75  //mm
b=10  //mm
t=10  //mm
//depth of V-notch is t/5
//in the absence of specimen, frictional and windage loss
L1=0.1  //kg f.m
//in the presence ofspecimen, which is placed on support breaks
L2=5.9  //kg f m
//rupture energy
U=L2-L1  //kg f m
//since the depth of V-notch is t/5
//so t/5=2
te=t-2  //mm
//volume of specimen
Ve=l*b*te*10^-9  //m^3
//modulus of rupture
Ur=U/Ve  //kg f/m^2
//effective area of cross section
Ae=b*te*10^-6  //m^2
//notch impact strength
Is=U/Ae  //kg/m
//given that 
Ui=30   //kg f.m
alpha=160*(%pi)/180  //radians
//swing diameter
D=1600  //mm
R=D/2*10^-3  //m
//weight of hammer
//as we know that
//Ut=W*R(1-cos(aplha))
//so
W=Ui/R/(1-cos(alpha))  //kg f.m
//capacity of izod impact testing machine
L3=30  //kg f.m
//so Uf will be
Uf=L3-L2   //kbg f.m
//we know that energy after rupture
//Uf=W*R(1-cos(beta))
bet=acos(1-Uf/W/R)  //radins
//beta in degrees
Beta=bet*180/(%pi)  //degrees
//also we know that Uf=W*hf
//so hf will be
hf=Uf/W  //m
printf ("rupture energy is %f kg f.m \n, modulus of rupture %f kg f/m^2 \n, notch impact strength %f kg/m \n, angle of hammer after striking %f degrees \n and height risen by hammer after breaking %f m",U,Ur,Is,Beta,hf)
