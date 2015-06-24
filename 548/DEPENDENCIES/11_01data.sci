//Refer to figure 11.1.
M=25;//mach no. of the flow
//let s denote  distance along the sphere surface and R radius than say s/R=r
r=0.6;//location of point 1 from stagnation point
phi=57.3*r //location of point 1 in degrees
theta=(90-phi)*%pi/180 //angle(in radian) made by the line tangent to the body at point 1 w.r.t free stream
y=1.4;//specific heat ratio of air
//let pressure behind the normal shock wave is Po2 and free stream pressure p.   Then Po2/P=Rp:
Rp=[(y+1)^2*M^2/(4*y*M^2-2*(y-1))]^(y/(y-1))*[(1-y+2*y*M^2)/(y+1)]
Cpmax=2*(Rp-1)/(y*M^2) //maximum pressure coefficient