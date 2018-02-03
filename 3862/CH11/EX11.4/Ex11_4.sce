clear
//
//variable declaration
//Let the principal plane make anticlockwise angle theta with the plane of px with y-axis. Then

px=(200)                    //N/mm^2
py=(150)                    //N/mm^2
q=(100)                     //N/mm^2

theta1=(atan((2*q)/(px-py))*180)/(%pi*2)                        
theta2=90+theta1
printf("\n theta= %0.2f ° and  %0.2f °",theta1,theta2)

p1=(px+py)/2+sqrt((((px-py)/2)**2)+(q**2))

printf("\n p1= %0.2f  N/mm^2",p1)

p2=(px+py)/2-sqrt((((px-py)/2)**2)+(q**2))

printf("\n p2= %0.2f  N/mm^2",p2)

qmax=sqrt((((px-py)/2**2))+(q**2))

printf("\n qmax= %0.2f  N/mm^2",qmax)
