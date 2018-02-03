clear
//The diameter of a concrete flag post varies from 240 mm at base to 120 mm at top. The height of the post is 10 m. If the post is subjected to a horizontal force of 600 N at top
//Consider a section y metres from top. Diameter at this section is d.
//d=120+12*y
//I=%pi*(d**4)/64
//Z=I*2/d=%pi*(d**3)/32
//variable declaration 
//M=600*1000*y //moment,N-mm
//f*Z=M,f is extreme fibre stress.
//
y=(5) 
printf("\n y= %0.2f  m",y)

//Stress at this section f is given by
P=600
M=P*y*1000
d=120+12*y
I=%pi*(d**4)/64
Z=I*2/d

f=M/Z

printf("\n f= %0.3f  N/mm^2",f)
