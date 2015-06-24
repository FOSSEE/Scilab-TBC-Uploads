//Given that
Mc = 75 //in g
To = 312  //in degree C
Mw = 220  //in g
Cb = 45  //in cal/K
Ti = 12  //in degree C
Sc = 0.0923  //in cal/g.K
Cb = 45  //in cal/K
Sw = 1  //in cal/g.K

//Sample Problem 19-4
printf("**Sample Problem 19-4**\n")
Tf = (Sc*Mc*To + Cb*Ti + Sw*Mw*Ti)/(Sw*Mw + Cb + Sc*Mc)
printf("The final temprature of the system is %f degree C", Tf)