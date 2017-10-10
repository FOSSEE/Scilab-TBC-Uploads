sigma_cbc=7//in MPa
sigma_ct=1.2//in MPa
sigma_st=170//in MPa
m=13.33//modular ratio
V=400000//capacity, in L
V=V/10^3//in cu m
h=3//assumed depth of water in tank, in m
A=V/h//area of tank, in sq m
B=sqrt(4/%pi*A)//diameter, in m
B=13//assume, in m
H=h+0.5//including freeboard, in m
w=10//unit weight of water, in kN/cu m
T=w*H*B/2//hoop tension, in kN
Ast=T*10^3/sigma_st//in sq mm
s1=10^3*0.785*12^2/Ast//in mm
s1=80//assume, in mm
t=(T*10^3/sigma_ct-(m-1)*Ast)/1000//in mm
t=175//assume, in mm
//steel at 2 m below top of wall
h=2//in m
T=w*h*B/2//in kN
Ast=T*10^3/sigma_st//in sq mm
s2=10^3*0.785*12^2/Ast//in mm
s2=145//assume, in mm
Ads=0.3/100*t*10^3//vertical steel as distribution steel, in sq mm
s3=1000*0.785*10^2/Ads//in mm
s3=150//assume, in mm
//design of tank floor
D=190//in mm
Ast=0.3/100*D*1000//in sq mm
s4=1000*0.785*10^2/Ast//in mm
s4=135//assume, in mm
mprintf("Summary of design\nDiameter of tank=%d m\nDepth of tank=%f m\nTank wall thickness=%d mm\nSteel-hoop steel; 4 m to 2 m below top=12 mm dia @ %d mm c/c\n2 m to 0 m below top=12 mm dia @ %d mm c/c\nvertical steel=10 mm dia @ %d mm c/c\nTank floor: Thickness %d mm\nSteel=10 mm dia @ %d mm c/c both ways",B,H,t,s1,s2,s3,D,s4)
