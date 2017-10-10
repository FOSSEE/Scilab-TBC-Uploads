clear
clc
//Example 7.6 EGL AND HGL FOR A SYSTEM
//Energy equation, (p1/gamma)+(alpha1*V1^2/2g)+hp=(p2/gamma)+(alpha2*V2^2/2g)+ht+hL ,V1=V2=0
p1=0;
p2=0;
ht=0;
Gamma=62.4; //specific weight[lbf/ft^3]
z1=520; //[ft]
z2=620; //[ft]
L=5000; //[ft]
D=1; //diameter[ft]
A=%pi*D^2/4 //area[ft^2]
Q=7.85; //rate of flow[ft^3/s]
V=Q/A //[ft/s]
g=32.2; //[ft/s^2]
hL=(0.01*(L/D)*V^2)/(2*g) //head loss[ft]
hp=round((p2-p1)/Gamma+(z2-z1)+hL) //pump head[ft]
printf("\nThe head supplied by the pump = %.f ft.\n",hp)
//1hp.s= 550ft.lbf
Wp=round(Gamma*Q*hp/550)///power in hp
printf("\nThe power supplied to the flow = %.f hp.\n",Wp)