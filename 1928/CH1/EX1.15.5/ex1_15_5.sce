//Chapter-1,Example1_15_5,pg 1-70

n=1                                     //first order maximum

l=0.82*10^-10                           //wavelength of X ray

qd=7                                    //glancing angle in degree

qm=51/60                                //glancing angle in minute

qs=48/3600                              //glancing angle in second

q=qd+qm+qs                              //total glancin angle in degree

//using Bragg's law n*l=2*d*sin(q)

d=n*l/(2*sind(q))

a=3*10^-10                              //lattice constant

//we know that d=a/root(h^2+k^2+l^2)

//assume root(h^2+k^2+l^2) =m

//arranging terms we get

m=a/d

printf("square root(h^2+k^2+l^2)=") 

disp(int32(m))

printf("hence possible solutions are (100),(010),(001)")
