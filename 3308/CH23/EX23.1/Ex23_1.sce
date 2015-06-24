clc 
// Given that
l=12//in inch Length of block
w=4//in inch width
f=0.01//in inch/tooth feed  
d=1/8//in inch depth of cut
D=2//in inch diameter of cutter
n=20//no. of teeth
N=100//in rpm spindle rotation
Vt=8//in inch/minute axial speed of the tool

// Sample Problem on page no. 600

printf("\n # Material Removal Rate , Power required and Cutting Time in slab milling # \n")

v=f*N*n
MRR=w*d*v 
printf("\n\n Material Removal Rate = %d in^3/min",MRR)

//for annealed mild steel unit power is taken as 1.1 hp min/in3
P=1.1*MRR
printf("\n\n Cutting power=%d hp",P)

T=P*33000/(N*2*3.14)
printf("\n\n Cutting torque=%d lb-ft",T)

lc=sqrt(d*D)
t=((l+lc)/20)*60
printf("\n\n Cutting time=%f sec",t)





