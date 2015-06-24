
//what is the resistance of each coil
V=100
P=1500
R=(V^2/P)/2
Ra=R
Rb=R
Rc=R
R1=((Ra*Rc)/(Ra+Rc))+Rb
I=V/R1
I1=(I*Ra)/(Ra+Rc)
I2=(I*Ra)/(Ra+Rc)
Pa=I*I*Ra
Pb=I1*I1*Rb
Pc=I2*I2*Rc
disp( 'Pc='+string(Pc)+'  watts' ,  'Pb='+string(Pb)+'  watts'  ,  'Pa='+string(Pa)+'  watts')
