//Varable Declaration

N=5   //Number of elements of dipole
s=0.25 //Space between dipole elements(wavelengths)
phi0=90*3.142/180 //Angle between array factor and array(radians)

//Calculation

alpha=-2*3.142*s*cos(phi0)  //Current phase(radians)
phi= -180:2:182
for k = 1:180
    Si(k)=alpha+2*3.142*s*cos(phi(k)*3.142/180)
end    
AFR = linspace(0,0,180)
AFI = linspace(0,0,180)
for i = 1:180
  for j = 1:N-1
     AFR(i)=AFR(i)+cos(j*Si(i))  //Real part of Array factor
     AFI(i)=AFI(i)+sin(j*Si(i))//Imaginary part of Array factor
end
end;

teta=linspace(-3.142,3.142,180)
AF = linspace(0,0,180)
for k  = 1:180
   AF(k)=AF(k)+(AFR(k)**2+AFI(k)**2)**0.5
end
//Result

polarplot(teta,AF)

