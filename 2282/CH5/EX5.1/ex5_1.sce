// Example 5.1, page no-174 
clear
clc
//for case (a)
m=0.5           //modulation index
//for AM
pt1=(1+(m^2)/2)

//for SSBSC
pt2=(m^2)/4

//% power saving
p=(pt1-pt2)*100/pt1
p=floor(p*10)/10
printf("Percentage power saving is %.1f%%",p)

//for case (b)
m=1           //modulation index
//for AM
pt1=(1+(m^2)/2)

//for SSBSC
pt2=(m^2)/4

//% power saving
p=(pt1-pt2)*100/pt1
p=floor(p*10)/10
printf("\n Percentage power saving is %.1f%%",p)
