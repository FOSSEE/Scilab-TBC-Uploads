
e_max=.98//max efficiency of transformer
P=15D+3//load at which max efficiency occurs at unity pf
Wi=P*(1-e_max)/(2*e_max)
Wcu=Wi
//in the first interval
P1=3D+3/0.6//load on the transformer
Wcu1=Wcu*(P1/P)^2
//in the second interval
P2=10D+3/0.8//load on the transformer
Wcu2=Wcu*(P2/P)^2
//in the third interval
P3=18D+3/0.9//load on the transformer
Wcu3=Wcu*(P3/P)^2
//load on the transformer during last interval=0-->copper losses=0, iron losses=0
Wi=Wi*24//total iron losses
Wcu=10*Wcu1+5*Wcu2+5*Wcu3//total copper losses
Pout=(3*10+10*5+18*5)*10^3//total output
e=Pout/(Pout+Wi+Wcu)*100
mprintf("All day efficiency=%f percent",e)
