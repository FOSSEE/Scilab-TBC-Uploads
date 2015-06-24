clear
clc
disp('Ex-4.7');
mc2=2.15*10^-4;          //mc2 is the mass of the electron, concidered in Mev for the simplicity in calculations
hc=197                  // The value of h*c in Mev.fm for simplicity
delx= 10               // Given uncertainity in position=diameter of nucleus= 10 fm
delp= hc/delx ;       //Uncertainiy in momentum per unit 'c' i.e (Mev/c) delp= h/delx =(h*c)/(c*delx);hc=197 Mev.fm  1Mev=1.6*10^-13 Joules')
p=delp;               // Equating delp to p  as a consequence of equation 4.10
K1=[[p]^2]+[mc2]^2   // The following 3 steps are the steps invlolved in calculating K.E= sqrt((p*c)^2 + (mc^2)^2)- m*c^2
K1=sqrt(K1)
K1= K1-(mc2);
printf('Kinetic energy was found out to be %d Mev', K1)