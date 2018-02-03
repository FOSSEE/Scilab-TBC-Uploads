clear
//The cross-section of a cast iron beam. The top flange is in compression and bottom flange is in tension. Permissible stress in tension is 30 N/mm^2 and its value in compression is 90 N/mm^2
//variable declaration
//
b1=(75)
h1=50
h2=50
b2=(150)
t=(25)
h=(200)

                                                                                               
A=(75*50+25*100+150*50)       //Area of section,A

Y=(75*50*175+25*100*100+150*50*25)/A

I=(b1*(h1**3)/12)+(b1*h1*((((h-(h1/2))-Y)**2)))+(t*((h-h1-h2)**3)/12)+(t*(h-h1-h2)*((((h/2)-Y)**2)))+(b2*(h2**3)/12)+(b2*h2*((((h2/2)-Y)**2)))



ytop=(h-Y)
ybottom=Y


Z1=I/ytop
fperc=90
//Top fibres are in compression. Hence from consideration of compression strength, moment carrying capacity of the beam is given by

M1=fperc*Z1/1000000         //Momnent carrying capacity of the section,KN-m.

//Bottom fibres are in tension. Hence from consideration of tension, moment carrying capacity of the section is given by

Z2=I/ybottom

fpert=30    

M2=fpert*Z2/1000000        //Momnent carrying capacity of the section,KN-m.


//Actual moment carrying capacity is the lower value of the above two values. Hence moment carrying capacity of the section is 
Mmax=min(M1,M2)

L=(5)
w=sqrt(Mmax*8/(L**2))

printf("\n w= %0.3f  KN/m",w)
printf("\n calculation mistake in book")
