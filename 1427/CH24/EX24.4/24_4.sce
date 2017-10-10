//ques-24.4
//Calculating vapour pressure of a mixture of benzene and toluene
clc
po1=150;//vapour pressure of pure benzene (in mm Hg)
po2=50;//vapour pressure of pure toluene (in mm Hg)
n1=92;//moles of benzene
n2=78;//moles of toluene
X1=n1/(n1+n2);//mole fraction of benzene
X2=n2/(n1+n2);//mole fraction of toluene
p1=po1*X1;//vapour pressure of benzene (in mm Hg)
p2=po2*X2;//vapour pressure of toluene (in mm Hg)
P=p1+p2;//total vapour pressure (in mm Hg)
printf("The vapour pressure of the mixture is %.1f mm Hg.",P);
