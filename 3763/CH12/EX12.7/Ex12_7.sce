clear
//
//
//

//Variable declaration
h1=1
h2=1
k1=1
k2=1
l1=1
l2=1
l3=0
s=3.5*10**6      //stress(Pa)

//Calculation
x=sqrt(h1**2+k1**2+l1**2)
y=sqrt(h2**2+k2**2+l2**2)
z=sqrt(h2**2+k2**2+l3**2)
cos_phi=((h1*h2)-(k1*k2)+(l1*l2))/(x*y)
sin_phi=sqrt(1-(cos_phi)**2)
cos_theta=((h1*h2)+(k1*k2)+(l1*l3))/(x*z)
ss=s*cos_theta*cos_phi*sin_phi        //critical resolved shear stress(Pa)

//Result
printf("\n critical resolved shear stress is %0.3f  MPa",ss/10**6)
