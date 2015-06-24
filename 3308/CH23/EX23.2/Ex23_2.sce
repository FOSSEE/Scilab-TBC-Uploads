clc 
// Given that
l=500//in mm Length
w=60//in mm width
v=0.6//in m/min  
d=3//in mm depth of cut
D=150//in mm diameter of cutter
n=10//no. of inserts
N=100//in rpm spindle rotation

// Sample Problem on page no. 655

printf("\n # Material Removal Rate , Power Required and Cutting Time in Face Milling # \n")

MRR=w*d*v*1000 
printf("\n\n Material Removal Rate = %d mm3/min",MRR)

lc=D/2
t=((l+(2*lc))/((v*1000)/60)) // velocity is converted into mm/sec
t1=t/60
printf("\n\n Cutting time= %ff min",t1)

f=(v*1000*60)/(60*N*n) // N is converted into rev/sec by dividing by 60 , velocity is converted into mm/sec
printf("\n\n Feed per Tooth= %f mm/tooth",f)

//for high strength aluminium alloy unit power is taken as 1.1 W s/mm3
P=(1.1*MRR)/60 // MRR is converted into mm3/sec by dividing by 60
P1=P/(1000)//in KW
printf("\n\n Cutting power=%f KW",P1)





