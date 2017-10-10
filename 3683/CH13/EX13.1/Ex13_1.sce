sigma_cbc=7//in MPa
sigma_ct=1.2//in MPa
sigma_st=100//in MPa
m=13.33//modular ratio
V=200000//capacity, in L
V=V/10^3//in cu m
h=2.5//assumed depth of water in tank, in m
A=V/h//area of tank, in sq m
B=sqrt(4/%pi*A)//diameter, in m
B=10.1//assume, in m
H=h+0.5//including freeboard, in m
w=10//unit weight of water, in kN/cu m
T=w*H*B/2//hoop tension, in kN
Ast=T*10^3/sigma_st//in sq mm
s1=10^3*0.785*16^2/Ast//in mm
s1=130//assume, in mm
t=(T*10^3/sigma_ct-(m-1)*Ast)/1000//in mm
t=110//assume, in mm
//hoop tension steel at 1.5 m below top of wall
h=1.5//in m
T=w*h*B/2//in kN
Ast=T*10^3/sigma_st//in sq mm
s2=10^3*0.785*16^2/Ast//in mm
s2=260//assume, in mm
Ads=0.3/100*t*10^3//vertical steel as distribution steel, in sq mm
s3=1000*0.785*10^2/Ads//in mm
s3=235//in mm
//design of tank floor
D=150//in mm
Ast=0.3/100*D*1000//in sq mm
s4=1000*0.785*10^2/Ast//in mm
s4=170//in mm
mprintf("Summary of design\nDiameter of tank=%f m\nDepth of tank=%d m\nTank wall thickness=%d mm\nSteel-hoop steel; 3 m to 1.5 m below top=16 mm dia @ %d mm c/c\n1.5 m to 0 m below top=16 mm dia @ %d mm c/c\nvertical steel=10 mm dia @ %d mm c/c\nTank floor: Thickness %d mm\nSteel=10 mm dia @ %d mm c/c",B,H,t,s1,s2,s3,D,s4)
//answer in textbook for spacing of 16 mm dia bars from 1.5 m to 0 m below top is incorrect 
