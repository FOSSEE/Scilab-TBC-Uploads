
E1=400//eddy current losses
//for a machine, eddy current losses is directly proportional to Bmax^2 and f^2
//Bmax is proportional to flux
//f is proportional to speed
//when speed and flux increased by 10%
E2=1.1^2*1.1^2*E1 //Eddy current losses under changed condition
mprintf("Increase in eddy current losses=%f W", E2-E1)
