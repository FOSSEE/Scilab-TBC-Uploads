clc
//Example 26.13
//Lanza equation

//------------------------------------------------------------------------------

//Given data
d=5
N=100
t=0.1
n1=4
n2=6
n3=8
w=(2*%pi*100)/60
V=w*(d/2)

res13=mopen(TMPDIR+'13_Lanza_equation.txt','wt')
mfprintf(res13,'Approximate stresses in flywheel rim is given by:\n')
mfprintf(res13,'\ts=V^2*(5.6+ (18.5*d / t*n^2))*10^3\n\n')

s1=V^2*(5.6+ ((18.5*d)/(t*n1^2)))*10^3
mfprintf(res13,'For 4 spokes,\tS4=%0.3f MPa\n\n',s1* 10^-6)

s2=V^2*(5.6+ ((18.5*d)/(t*n2^2)))*10^3
mfprintf(res13,'For 6 spokes,\tS6=%0.3f MPa\n\n',s2* 10^-6)

s3=V^2*(5.6+ ((18.5*d)/(t*n3^2)))*10^3
mfprintf(res13,'For 8 spokes,\tS8=%0.3f MPa\n\n',s3* 10^-6)

mclose(res13)
editor(TMPDIR+'13_Lanza_equation.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
