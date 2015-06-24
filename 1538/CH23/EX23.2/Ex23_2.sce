//example-23.2
//page no-684
//given
//coefficient of linear expansion of Cu and steel are
alphaCu=18*10^-6  //cm/cm/degree C
alphaSteel=14*10^-6  //cm/cm/degree C
//young's modulus of elasticity
ECu=106*10^9  //Pa
ESteel=200*10^9  //Pa
//part(a)
//since alphaCu>alphaSteel
//so steel will contract less. 
printf ("Hence strip will bend in the direction of copper")
//part(b)
//annealing temp
T2=530  //degrees celcius
//room temp
T1=30  //degrees celcius
//difference in temp
T=T2-T1  //degrees celcius
//differnce in values of coefficient of linear expansion
alpha=alphaCu-alphaSteel  //cm/cm/degrees celcius
//differential contraction
contraction=T*alpha  //cm/cm
//since the two metals in the strip have equal dimension
//sigmaCu=sigmaSteel=sigma
//strain in copper
//eCu=sigma/Ecu    -----(1)
//strain in steel
//eSteel=sigma/ESteel   ---(2)
//sum of strains given by equation 1 and 2
sigma=contraction*ESteel*ECu/(ESteel+ECu)*10^-6  // MPa
printf ("the stresses in each metal is %f MPa",sigma)
