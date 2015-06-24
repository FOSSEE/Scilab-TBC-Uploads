//Example 9.1
// page no.391
//calculate the rate at which heat must
//be supplied if evapiration occurs at
//(i) 1 atm pressure
//a vaccum of 650 mm Hg
//given data
ro=1020       // kg/m^3, density of feed
sf=4.1        //kj/kg C,specific heat of the feed
sp=3.9        //kj/kg C,specific heat of the product
ci=5       //initial concentration
cw=100-ci    //conc. of  water
cf=40        //final conc.
rate=100      //m^3/day, rate of conc. of aq. solution
ft=25         // C, feed temp.
//calculation
//materiel balance
Wf=rate*ro    //Kg. feed entering
Ms=ro*ci      //Kg mass of solute
Mw=ro*cw      //kg,mass of water
fc=cw/ci      //kg,feed concentration
pc=(100-cf)/cf // kg,product concentration
wlwp=Ms*pc      //Kg, water leaving with the product
Ws=Mw-wlwp     //kg,water evaporated
Wp=wlwp+Ms     // kg, product
//energy balance
rt=0            //C reference temp.
ef=sf*(ft-rt)   //kj/kg,enthlpy of the feed
//case i
Tp=100          //temp. of the product (because the solute has a 'high molecular wt' the boiling pt elevation is neglected)
ip=sp*(Tp-rt)   //kj/kg, enthalpy of the product
iv=2680         //kj/kg, enthalpy of the vapour generated at 100 C and 1 atm pr. from the steam table
//refer to fig. 9.23
//from energy balance eq. (Wf*if+qs=Wv*iv+Wp*ip)
qs=Ws*iv+Wp*ip-Wf-ef  //Wv=Ws
printf("The rate at which heat must be supplied at 1 atm pressure is %f kj/ day\n",qs)

//case ii
//650 mm Hg vaccum=110 mmHg pressure
bp=53.5         //C, boiling point of water
ip2=sp*(bp-rt)  //kj/kg, enthalpy of the product
es=2604         //kj/kg, enthalpy of the saturated steam (from steam table)
//from energy balnce eq.
qs2=Wp*ip+Ws*es-Wf-ef
printf("The rate at which heat must be supplied at a pressure of 600 mm Hg is %f kj/day ",qs2)