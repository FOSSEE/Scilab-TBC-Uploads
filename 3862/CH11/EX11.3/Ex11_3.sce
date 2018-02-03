clear
//The direct stresses at a point in the strained material are 120 N/mm2 compressive and 80 N/mm2 tensile. There is no shear stress.

//
//variable declaration

//The plane AC makes 30° (anticlockwise) to the plane of px (y-axis). Hence theta= 30°. px = 80 N/mm^2 py = – 120 N/mm^2 ,q = 0

px=(80)
py=(-120)
q=(0)
theta=30
pn=((px+py)/2)+((px-py)/2)*cos(2*theta*%pi/180)+q*sin(2*theta*%pi/180)

printf("\n pn= %0.0f  N/mm^2",pn)

pt=((px-py)/2)*sin(2*theta*%pi/180)-q*cos(2*theta*%pi/180)

printf("\n pt= %0.1f  N/mm^2",pt)
p=sqrt((pn**2)+(pt**2))

printf("\n p= %0.2f  N/mm^2",p)

alpha=atan(pn/pt)*180/%pi 

printf("\n alpha= %0.1f  °",alpha)
