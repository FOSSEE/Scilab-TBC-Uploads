
//acids and bases//
//example 2.12//
K=1.7*10^-5;//Dissociation constant of NH4OH//
N=0.01;//Normality of NH4OH solution//
V=1/N;
a=sqrt(K*V);//since a is very small//
printf('percentage of ionization is %f',a);
OH=a*N;
printf('\n concentration of OH- ions before addition of NH4Cl is %fg.ion/lit',OH);
disp("concentration of hydroxyl ions after adding NH4Cl:");
disp(" In the presence of highly ionized NH4Cl,ammonium-hydroxide will remain practically unionized.Thus,all NH4+ ions will be obtained from dissociation of NH4Cl");
NH4=0.05;//concentration of NH4+ in g.ion/lit//
NH4OH=0.01;//concentration of NH4OH in g.mol/lit//
OH=K*NH4OH/NH4;
OH=OH/10^-6;
printf('\n the concentration of hydroxyl ions after adding NH4Cl is %fmg.ion/lit',OH);
disp(" A comparision of OH- concentration under two conditions indicate that hydroxyl ion concentration is decreased by addition of ammonium chloride");