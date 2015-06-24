clc
//initialisation of variables
d=7//ft
h=2//in
s=750//r p m
s1=31.3//lb/sec
h1=1.5//in
a=25//Degree c
p=5.7//lb/in^2
d1=0.97//in
h2=370//ft/sec
j=32.2//in
k=1400//in
e=0.75//percent
w=326//in
p=290//in
vi=155//ft/sec
//CALCULATIONS
P=(%pi*7.69*s)/(60)//ft/sec
H=(P*h2*s1)/(550*j)//ft/sec
E=(P*h2)/(j*e*k)//C.H.U/lb
//RESULTS
printf('the drop in pressure while the steam is passing through the turbine=% f C.H.U/lb',E) 
