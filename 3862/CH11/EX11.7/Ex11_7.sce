clear
//
//variable declaration
//Let the principal plane make anticlockwise angle theta with the plane of px with y-axis. Then

px=(-50)                    //N/mm^2
py=(100)                    //N/mm^2
q=(75)                     //N/mm^2


p1=(px+py)/2+sqrt((((px-py)/2)**2)+(q**2))

printf("\n (i) p1= %0.2f  N/mm^2",p1)

p2=(px+py)/2-sqrt((((px-py)/2)**2)+(q**2))

printf("\n p2= %0.2f  N/mm^2",p2)

qmax=sqrt((((px-py)/2**2))+(q**2))

printf("\n (ii) qmax= %0.2f  N/mm^2",qmax)

//let theta be the inclination of principal stress to the plane of px.


theta1=(atan((2*q)/(px-py))*180)/(%pi*2)                        

printf("\n theta= %0.2f  °  clockwise",theta1)

//Plane of maximum shear makes 45° to it 

theta2=theta1+45
printf("\n theta2= %0.2f  °",theta2)

//Normal stress on this plane is given by

pn=((px+py)/2)+((px-py)/2)*cos(2*theta2*%pi/180)+q*sin(2*theta2*%pi/180)

pt=qmax

//Resultant stress
p=sqrt((pn**2)+(pt**2))

printf("\n p= %0.2f  N/mm^2",p)

//Let ‘p’ make angle phi to tangential stress (maximum shear stress plane). 

phi=atan(pn/pt)*180/%pi 

printf("\n phi= %0.1f  °",phi)

//there is mistake in book
printf("\n mitake in book answer is wrong")
