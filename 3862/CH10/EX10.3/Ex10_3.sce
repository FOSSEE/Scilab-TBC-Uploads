clear
//the cross-section of a cantilever beam of 2.5 m span. Material used is steel for which maximum permissible stress is 150 N/mm^2
 
//variable declaration

A=(180)               //width of I-beam,mm
H=(400)               //height of I-beam,mm
a=(170)               //width of inter rectancle if I-beam consider as Rectangle with width 10,mm
h=(380)               //Height of inter rectancle if I-beam consider as Rectangle with width 10,mm

I=((A*(H**3))/12)-((a*(h**3))/12)
ymax=(200)            //extreme fibre,mm

Z=I/ymax
fper=(150) 

Mmax=fper*Z

//If udl is w kN/m, maximum moment in cantilever

L=2  //m

w=Mmax/(L*1000000)
printf("\n w= %0.2f  KN/m",w)
