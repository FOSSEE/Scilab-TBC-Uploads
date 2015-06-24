// Example 5.3, page no-175 
clear
clc

m=0.6           //60% modulation
//for A3E
pt1=(1+(m^2)/2)

//for J3E
pt2=(m^2)/4

//% power saving
p=(pt1-pt2)*100/pt1
p=ceil(p*10)/10
printf("Percentage power saving is %.2f%%",p)
