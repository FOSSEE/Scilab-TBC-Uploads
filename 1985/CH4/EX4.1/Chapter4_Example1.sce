clc
clear
n=15000//Number of lines per inch
w=[5890,5896]//Wavelengths of the two sodium lines in Amgstrongs
n1=1//Order of diffraction

//Calculations
N=(n/2.54)*100//Number of lines present per meter 
q1=asind(N*n1*w(1)*10^-10)//Angle of diffraction for D1 line in degrees
q2=asind(N*n1*w(2)*10^-10)//Angle of diffraction for D2 line in degrees
q=q2-q1//The angular seperation in degrees
x=(q*60)//The angular seperation in minutes
y=(x-int(x))*60//For output

//Output
printf('The angular seperation is %i minute %3.2f seconds',x,y)
