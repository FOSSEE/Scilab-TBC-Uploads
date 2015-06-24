//chapter11,Example11_6,pg 300

//acc. to uncertainity principle

//delx*delp >= (h/2*%pi)

rad=10^-14

delx=2*rad

h=6.625*10^-34

delp=(h/(2*%pi*delx))

//from einstein's relavistic relation

//E=mc2=KE+rest mass energy=0.5mv2+moc2

//when velocity of particle is very high

//m=(mo/sqrt(1-((v/c)^2)))

//m-mass of particle with velocity v

//mo-rest mass of particle

//c-velocity of particle

p=delp//assume

c=3*10^8

mo=9.1*10^-31

E=sqrt(((p*c)^2)+((mo*(c^2))^2))

E=E/(1.6*10^-19)

printf("E=%.2f ev",E)

printf("\nthis value is much higher than experimentally obtained values of energy of electron\n")

printf("of a radioactive nuclei i.e 4 Mev this proves that electron cannot reside within nucleus")