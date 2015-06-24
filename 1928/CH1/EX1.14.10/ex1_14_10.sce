//Chapter-1,Example1_14_10,pg 1-62

A=63.546                                //atomic weight of Cu

N=6.023*10^26                           //Avogadro's number

p=8930                                  //Density

n=1.23                                  //no.of electron per atom

//density=mass/volume

//therfore 1/volume=density/mass

//since electron concentration is needed, let us find out no of atoms/volume(x)

x=N*p/A

//now one atom contribute n=1.23 electron

//therefore x atoms contribute  y no of free electron

y=x*n

printf("free electron concentration=")

disp(y)

printf("electron/m^3")
