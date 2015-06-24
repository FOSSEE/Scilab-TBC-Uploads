clc
To=3000 // lb/ft^2
eo=1.1
e1=0.9
e=eo-e1
ea=(eo+e1)/2
T1=3000 // lb/ft^2
T=1 // in
t = 2 // min
m=(e/T1)/(1+ea)
U=50
Tv=0.197
Gw=62.4 //lb/ft^3
Cv=Tv*(T/(2*12)^2)/t
k=Cv*m*Gw *10^7
printf('a)k = %f x10^-7 ft/min\n',k)


U=60
Tv=0.286
H=6
t60=Tv*H^2/(Cv*60*24)
printf(' b)t60 =%f days',t60)
