clc 
// Given that
l=6//in inch Length of rod  
di=1/2//in inch initial diameter of rod
df=0.480//in inch final diameter of rod
N=400//in rpm spindle rotation
Vt=8//in inch/minute axial speed of the tool

// Sample Problem on page no. 600

printf("\n # Material Removal Rate and Cutting Force in Turning # \n")

V=3.14*di*N
printf("\n\n Cutting speed=%d in/min",V)

v1=3.14*df*N//cutting speed from machined diameter
d=(di-df)/2//depth of cut
f=Vt/N//feed
Davg=(di+df)/2
MRR=3.14*Davg*d*f*N 
printf("\n\n Material Removal Rate %f=in^3/min",MRR)

t=l/(f*N)
printf("\n\n Cutting time=%f min",t)

P=(4/2.73)*MRR//average value of stainless steel is taken as 4 ws/mm3 or 4/2.73 hpmin/mm3
printf("\n\n Cutting power=%f hp",P)

Fc=((P*396000)/(N*2*3.14))/(Davg/2)
printf("\n\n Cutting force=%d lb",Fc)

//answer in the book is given 118 lb due to approximation




