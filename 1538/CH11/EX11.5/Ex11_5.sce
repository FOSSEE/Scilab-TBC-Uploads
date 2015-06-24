//example-11.5
//page no-357
//given
//conventional stress
sigmac=98.9  //MPa
//conventional strain
epsilonc=0.35  //mm/mm
//as we know that
epsilont=log(1+epsilonc)   //mm/mm
//also
//sigmac=sigmat*exp(-epsilont)  
//so
sigmat=sigmac/exp(-epsilont)  //MPa
printf ("the true strees is %f MPa\n and true strain is %f mm/mm",sigmat,epsilont)
