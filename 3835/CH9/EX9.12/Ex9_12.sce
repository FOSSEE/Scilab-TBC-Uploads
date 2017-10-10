clear
//
//given and derived
ish=1
il=26
ia=25
ra=0.4
//phy1*i1=phy2*i2 and ish2*i2=ish1*i1
//subtituting values in the above equation we get i2=25/ish2
eb1=200-ia*ra
//eb2=200-0.4*i2
//eb1/eb2=(n1*ish1)/(n2*ish2)
//190/(200-0.4*25/ish2)=500/(700*ish2)
//on finding the square root we get the value of ish2 as 0.698A
ish2=0.698
totres=200/0.698
r=totres-200
printf("\n resistance to be inserted in the field circuit is= %0.1f  ohm",r)
