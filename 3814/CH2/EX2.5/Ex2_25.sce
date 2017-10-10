//Example Non 2.5 Determine the pressure at the end of the artery when the head is//
clc
Bh=1.8   //in m
Ah=2.4   // in m
rhoHg=13.6
gHg=1000
Hhg=0.212
rhoBlood=1
gBlood=1000
gama=1000*9.8
z1=0
z2=2.4

//Calculation
hBlood=(rhoHg*gHg*Hhg)/(rhoBlood*gBlood)
P2=(hBlood+(z1-z2))*gama
//when the head is 1.8m below the heart
z3=0
z4=-1.8
P3=(hBlood+(z3-z4))*gama
printf("hBlood=%f m\n",hBlood);
printf("P2=%f pa\n",P2);
printf("P3=%f pa\n",P3);
