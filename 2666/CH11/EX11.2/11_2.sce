clc
//initialisation of variables
p1=14.2//psia
p2=107.4//pisa
p3=0.4//psia
p4=3.0//psia
w=4//percent
n=1.35//ft
v1=0.1866//p d
v2=1.04//p d
//CALCULATIONS
V={p3*[1-((p2+p4)/(p1-p3))^1/n]+1}*((p1-p3)/(p1))//percent
V1=v2-v1//p d
V2=V1*(p1-p3)/p1*100//percent
//RESULTS
printf('the volumetric efficiency equals=% f percent',V2)
