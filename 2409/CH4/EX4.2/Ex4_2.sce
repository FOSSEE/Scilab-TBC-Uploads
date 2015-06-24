
//Variable Declaration
ah=0.0188
bh=1.217
av=0.0168
bv=1.2
R01=10        //Point Rain Rate(mm/hr)
L=2.8753812  //Effective path length calculated in Example 4.1(km)

//Calculation
//Factors depending on frequency and polarization
ac=(ah+av)/2 //a for circular polarization
bc=(ah*bh+av*bv)/(2*ac) //b for circular polarization
alpha=ac*R01**bc  //Specific Attenuation(dB)
AdB= alpha*L     //Rain Attenuation(dB)


//Results
printf("The Rain Attenuation for circular polarization is %.2f dB",AdB);
