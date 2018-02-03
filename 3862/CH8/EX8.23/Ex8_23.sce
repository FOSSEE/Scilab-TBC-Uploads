clear
//

//variable declaration

// Let the force shared by bolt be Ps and that by tube be Pc. Since there is no external force, static equilibrium condition gives Ps + Pc = 0 or Ps = – Pc i.e., the two forces are equal in magnitude but opposite in nature. Obviously bolt is in tension and tube is in compression.
//Let the magnitude of force be P. Due to quarter turn of the nut

//[Note. Pitch means advancement of nut in one full turn] 

Ls=(600)                      //length of whole assembly,mm
Lc=(600)                      //length of whole assembly,mm
delta=(0.5)
ds=(20)                       //diameter,mm
di=(28)                       //internal diameter,mm
de=(40)                       //external diameter,mm
Es=(2*100000)                 //Young's modulus, N/mm^2
Ec=(1.2*100000)
As=%pi*(ds**2)/4                  //area of steel bolt**mm^2
Ac=%pi*((de**2)-(di**2))/4      //area of copper tube**mm^2

P= (delta*(1/Ls))/((1/(As*Es))+(1/(Ac*Ec))) //Load,N

ps=P/As                          //stress,N/mm^2
pc=P/Ac                          //copper,N/mm^2

printf("\n ps= %0.2f  N/mm^2",ps)
printf("\n pc= %0.2f  N/mm^2",pc)
