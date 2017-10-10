//ques-18.14
//Calculating increase in entropy in evaporation of water
clc
n=1;//moles of water
L=540;//latent heat of vapourosation (in cal/g)
T=100;//temperature (in degree celsius)
q=L*n*18;//heat (reversible)
S=q/(T+273);//increase in entropy
printf("The increase in entropy is %.3f cal/mol/K.",S);
