//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.7w
//calculation of the maximum displacement,wavelengths and wave speed,velocity,nodes and antinodes,number of loops

//given data
//given equation is ....y = (5.00 mm)*sin(1.57 cm^-1)*sin((314 s^-1)*t)

//calculation
//at x=5.66 cm
A=(5*10^-3)*sin(1.57*5.66)//amplitude
k=1.57//value of k(in cm^-1)
w=314//angular frequency(in s^-1)
lambda=(2*%pi)/k//wavelength
nu=(w)/(2*%pi)//frequency
//v = dy/dt = (157 cm/s)*sin(1.57 cm^-1*x)*cos((314 s^-1)*t)
function v=f(t,x)
    v=157*sin(1.57*x)*cos((314)*t)
endfunction
x=5.66//value of x (in cm)
t=2//value of t (in s)
vn=f(t,x)//velocity of the particle

//for nodes......sin(1.57 cm^-1)*x = 0..........gives x=2*n
//since l=10 cm..nodes occur at 0 cm,2 cm,4 cm,6 cm,8 cm,10 cm
//antinodes occur in between at 1 cm,3 cm,5 cm,7 cm,9 cm
nloops=10*(1/2)

printf('the amplitude is %3.2f mm',10^3*A)
printf('\nthe wavelength is %3.2f cm',lambda)
printf('\nthe velocity is %3.2f cm/s',vn)// Textbook Correction : correct answer is 76.48 cm/s
printf('\nnodes occur at 0 cm,2 cm,4 cm,6 cm,8 cm,10 cm')
printf('\nantinodes occur in between at 1 cm,3 cm,5 cm,7 cm,9 cm')
printf('\nthe number of loops is %d',nloops)
