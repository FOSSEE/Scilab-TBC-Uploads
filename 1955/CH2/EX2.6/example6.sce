clc
clear
//input data
t=25//The camber angle of aero foil blades in degree
ps=30//The blade stagger angle in degree
sc=1//The pitch-chord ratio of the blades
in=5//The nominal value of incidence in degree

//calculations
a1=ps+(t/2)//The cascade blade angle at inlet in degree
a2=a1-t//The cascade blade angle at outlet in degree
a1n=in+a1//The nominal entry air angle in degree
a2n=atand((tand(a1n))-(1.55/(1.0+(1.5*sc))))//The nominal exit air angle in degree

//output
printf('(1)The cascade blade angles at \n    (a)inlet is %3.1f degree\n    (b)exit is %3.1f degree\n(2)The nominal air angles at \n     (a)inlet is %3.1f degree\n     (b)exit is %3.2f degree',a1,a2,a1n,a2n)
