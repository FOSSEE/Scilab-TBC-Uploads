//Chapter-3,Example3_17_13,pg 3-40

n1=10                                    //no of turns per cm

i=2                                     //current

B=1                                     //flux density

u0=4*%pi*10^-7                          //permeability of free space

n=n1*100                                //no turns per m

H=n*i

printf("                   1) magnetic intensity =")

disp(H)

printf("Amp-turn/meter")

//calculation for magnetization

I=B/u0-H

printf("     2) magnetization =")

disp(I)

printf("Amp-turn/meter")

//relative permeability

ur=B/(u0*H)

printf("     3) Relative Permeability of the ring =")

disp(int(ur))
