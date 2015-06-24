clc
//to calculate critical angle for core-cladding interface
n1=1.5
n2=1.45
thetac=asind(n2/n1)
theta1=90-thetac
disp("critical angle for core-cladding interface is theta1="+string(theta1)+"degree")
//to calculate acceptance angle in air for fibre and corresponding angle of obliquences
na=1
thetaa=asind(n1*0.26/na)
disp("acceptance angle thetaa="+string(thetaa)+"degree")
//to calculate numerical aperture
NA=((n1+n2)*(n1-n2))^(1/2)
disp("numerical aperture of fibre is NA="+string(NA)+"unitless")
//to calculate % of light
per=(NA)^2*100
disp("% of light collected is per="+string(per)+"%")

