Im=250/1000
w=100
r=4
L=50/1000
t=25/1000

i=Im*sin(w*t)
Vr=i*r
Vl=Im*L*w*cos(w*t)

Pr=i*i*r
Pl=Vl*i
wl=1/2*L*i*i
wl_min=0 //min current =0
wl_max=1/2*L*Im*Im //Im is the max current

disp("All values in Joules")
disp(wl_max,wl_min,wl,Pl,Pr)


