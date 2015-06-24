clc
//initialisation of variables
a=35//Degree C
b=20//degree C
f=2//ft
w=422//ft
w1=222//ft
g=32.2//ft
s=1500//r p m
j=0.8//ft
p=3//lb/sec
h=80//percent
i=1400//ft
P=(%pi*(31/12)*(s/60))//ft/sec
W=P/g*[w-(-w1)]//ft lb
H=(p*W)/550//ft lb
//CALCULATIONS
E=W/(j*i)//C.H.U
//RESULTS
printf('the house -power developed per pair of rings if the steam=% f ft lb',E)
