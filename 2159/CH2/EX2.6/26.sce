// problem 2.6
a=0.25
s1=11.5
s2=1
z=9810
v1=a*a*a*0.5
wc=v1*z
h=0.016
// by archimede's principle
v2=(a*0.5+h)*a*a // volume of cube submergerd
v=(v2-v1)/(s1-s2)
wl=v*s1*z
disp(wl,"weight of lead attached")

