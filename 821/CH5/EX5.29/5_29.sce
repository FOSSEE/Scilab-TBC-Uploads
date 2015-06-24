dGAgCl=-26.22;//Standard free energy change of AgCl in Kcal per mol//
dGAgI=-15.85;//Standard free energy change of AgI in Kcal per mol//
dGKCl=-97.59;//Standard free energy change of KCl in Kcal per mol//
dGKI=-77.03;//Standard free energy change of KI in Kcal per mol//
dG=dGAgCl+dGKI-dGAgI-dGKCl;//Standard free energy change in Kcal//
printf('Standard free energy change accompanying the given reaction=%fKcal',dG);
printf('\nSince dG is positive the reaction is not feasible under these conditions but the reverse reation is possible.');
