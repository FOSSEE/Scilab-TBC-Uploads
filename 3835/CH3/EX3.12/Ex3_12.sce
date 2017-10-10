clear
//
//given
//case a
B=1 //Wb/m**2
u1=4*3.14*10**-7
A=10**-4 //cm**2
per=800 //permeability
n=250 //number of turns
flux=B*A
printf("\n flux %0.5f  Wb",flux)
r=781250   //AT/Wb calculated using formula for reluctance
mmf=flux*r //AT
i=mmf/n  //exciting current required in A
printf("\n i %0.5f  A",i)
l=(n*flux)/i  //self inductance of the coil
printf("\n l= %0.5f  H",l)
w=(l*i*i)/2  //energy stored
printf("\n w= %0.5f  J",w)
//case b
airgap=1*10**-3   //air gap is assumed 
rair=airgap/(u1*A) //reluctance of air gap in AT/Wb
mmfa=flux*rair     //mmf of air in AT
printf("\n mmfa")
//rcore=((2.5*3.14)-0.1)/(32*3.14*10**-6)  //reluctance of core 
//mmfc=flux*rcore
mmfc=780 //AT
F=mmfc+mmfa
I=F/n  //A
printf("\n exciting current= %0.2f  A",I)
n=250 //number of turns
L=(n*flux)/I   //self inductanc eof coil with air gap 
printf("\n l= %0.5f  H",L)
e=(L*I*I)/2  //energy stored in coil
printf("\n e= %0.5f  J",e)
