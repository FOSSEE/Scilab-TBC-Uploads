clear
clc
Xw1=0.01;//in gm/dm^3
Xw2=0.12;//in gm/dm^3
Xw3=0.24;//in gm/dm^3
Xb1=1.848*10^-5;//in gm/dm^3
Xb2=2.661*10^-3;//in gm/dm^3
Xb3=1.089*10^-2;//in gm/dm^3
//Taking Xw1,Xw2,Xb1,Xb1 to calculate n
n=((log10(Xb1))-(log10(Xb2)))/((log10(Xw1))-(log10(Xw2)));//degree of complexity
printf('n=%.1f',n)

//Similarly can be done using lines(4,5,7,8) and also for lines (3,5,6,8)
//For all we get n=2
//page 200
