//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 20.2w
//calculation of the angle of flint glass prism and angular dispersion produced by the combination

//given data
A=5//angle of crown glass prism(in degree)
mur=1.514//refractive index of crown glass for the red light
mu=1.517//refractive index of crown glass for the yellow light
muv=1.523//refractive index of crown glass for the violet light
murdash=1.613//refractive index of flint glass for the red light
mudash=1.620//refractive index of flint glass for the yellow light
muvdash=1.632//refractive index of flint glass for the violet light

//calculation
//delta = (mu - 1) * A.......deviation produced by the prism
//D = ((mu - 1)*A) - ((mudash - 1)*Adash)....net deviation
//net deviation for the mean ray is equal to zero
Adash=((mu-1)/(mudash-1))*A//angle of flint glass prism
//deltav - deltar = (muv - mur)*A.........................for crown glass prism
//deltavdash - deltardash = (muvdash - murdash)*Adash...for flint glass prism
delta=((muv-mur)*A)-((muvdash-murdash)*Adash)//net angular dispersion

printf('the angle of flint glass prism needed is %3.1f degree',Adash)
printf('\nthe angular dispersion produced by the combination is %3.4f degree',abs(delta))
