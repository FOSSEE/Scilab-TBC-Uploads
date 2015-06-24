Mt=5000;//total mass(Kg) for both the rocket
Isp=350;//specific impulse (s)for both rocket
g=9.8;
//for the single stage rocket:
Ms=500;//structural mass(Kg)
Mp=4450;//propellent mass(Kg)
Ml=50;//payload mass(Kg)
Mi=Ms+Mp+Ml;//initial mas(Kg)
Mf=Ms+Ml;//final mass(Kg)
Vb=g*Isp*log(Mi/Mf)//burnout velocity(m/s)
//for the double-stage Rocket
Ms1=400;//structural mass (Kg)of first stage
Mp1=3450;//propellent mass(Kg)of first stage
Ms2=100;//structural mass (Kg)of second stage
Mp2=1000;//propellent mass(Kg)of second stage
Ml=50;//payload mass(Kg)
Mi2=Ms1+Mp1+Ms2+Mp2+Ml;//initial mas(Kg)
Mf2=Ms1+Ms2+Ml;//final mass(Kg)
//burnout velocity(m/s) of the first stage:
Vb1=g*Isp*log((Mp1+Ms1+Mp2+Ms2+Ml)/(Ms1+Mp2+Ms2+Ml))
//increase in velocity by second stage DVb:
DVb=g*Isp*log((Mp2+Ms2+Ml)/(Ms2+Ml))
//velocity at burnout of second stage
Vb2=Vb1+DVb
