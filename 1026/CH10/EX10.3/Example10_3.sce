//chapter10,Example10_3,pg 271

m=9.1*10^-31

e=1.6*10^-19

//due to potential difference V, electron is accelerated

//eV=0.5*m*(v^2)

//due to transverse magnetic field B electron moves in circular path of radius R

//(m*(v^2))/R=BeV

B=1.19*10^-3

V=1000

v=sqrt((2*e*V)/m)

R=(m*v)/(B*e)

L=m*v*R

printf("radius of electron trajectory\n")

printf("R=%.2f m",R)

printf("\nangular momentum of electron\n")

disp(L)