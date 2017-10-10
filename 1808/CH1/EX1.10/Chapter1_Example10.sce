clc
clear
//INPUT DATA
IP=50;//indicated power in kW
pmi=7;//mean effective pressure in bar
L=0.10;//stroke in m
d=0.08;//bore in m
nc=4;//number of cylinders
n=2;//for 4 cylinders
N=3800;//speed in rpm

//CALCULATIONS
n1=(IP*4*n*60)/(pmi*100*L*3.14*d^2*nc);//Average misfire in rpm
n2=N/2;//Theoretical number of explosions/min
na=N/2;//actual no.of explosion/min
n11=n2-na;//Average number of misfires 
IP1=pmi*100*L*3.14*((0.08^2)/4)*N*nc/(n*60);//Indicated power based on actual speed

//OUTPUT
printf('(i)Average misfire is %3.d rpm \n (ii)Indicated power based on actual speed is %3.3f kW',n1,IP1)


