clc
//Given that
mu=1.52// refractive index of plane glass prism
theta=%pi/180// angle of prism
y1=25// separation between slit and biprism in cm 
y2=175//separation between biprism and screen in cm 
lambda=0.000055// wavelength of incident light in cm 
beta=0.02//fringe width in cm
//Sample Problem 7 Page No. 49
printf("\n # Problem 7 # \n")
printf(" \n Standard formula used \n   beta= lambda*D/d. \n")
D=y1+y2
d= (D*lambda)/beta
theta=d/(2*(mu-1)*y1)
vertex_angle=180-(2*theta*180/%pi)
printf("\n Vertex angle of biprism   is %f degree.",vertex_angle)

