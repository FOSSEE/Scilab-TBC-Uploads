
Oc=400000
pf1=0.8
phi1=acos(pf1)
ab=Oc/cos(phi1)*sin(phi1)
pf2=0.25
phi3=acos(pf2)
pf2=0.484

gammaa=(ab-pf2*Oc)/(pf2*cos(phi3)+sin(phi3))
disp(gammaa)
