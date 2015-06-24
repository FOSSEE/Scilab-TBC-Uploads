clc
//Initialization of variables
z1=1 //in
z2=2 //in
z3=2 //in
sOil=0.8 
sWater=1
Pa=3 //psi
//calculations
Pd=(Pa) + (z2+z1)*sOil*62.4/144 + 62.4*z3/144
Fa=Pa*144*%pi*z3^2
Fb=sOil*62.4*(z2+z1-(z2+z3)*z2/((z2+z1)*%pi))*(%pi*z3^2 /2)
Fc=sOil*62.4*(z2+z1)*(%pi*z3^2 /2)
Fd=62.4*(z2+z3)*z2/((z2+z1)*%pi)*(%pi*z3^2 /2)
F=Fa+Fb+Fc+Fd
yPa=z2+z1
yCb=z2+z1-(z2+z3)*z2/((z2+z1)*%pi) 
ICb=%pi*(z2+z3)^4 /128 -0.5*%pi*z2^2 *((z2+z3)*z2/((z2+z1)*%pi))^2
yPb=yCb+ICb/(yCb*0.5*%pi*z2^2)
yPc=z2+z1+ (z2+z3)*z2/((z2+z1)*%pi) 
ICd=ICb
yPd=z2+z1 + (z2+z3)*z2/((z2+z1)*%pi) + ICb/((z2+z3)*z2/((z2+z1)*%pi)*0.5*%pi*z3^2 )
yP=(Fa*yPa+Fb*yPb+Fc*yPc+Fd*yPd)/F
//Results
printf('case 1')
printf('\n Pressure at the bottom = %.1f psi',Pd)
printf('\n case 2')
printf('\n Net force = %d lb', F+3)
printf('\n Location of net force= %.2f ft', yP)
