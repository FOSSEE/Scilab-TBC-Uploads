clear ;
clc;

// Example 3.3
printf('Example 3.3\n\n');
//Page no. 81
// Solution

// Basis 1 hour
rc = 5000 ;//[cpm-counts per minute]
cg = 10000/24 ;//[cells/hr]
k = cg/rc ;//[cells/cpm]
n_rc = 8000 ;//[cpm]
n_cg = k*n_rc ;//[cells/hr]
printf('New average cell growth rate is %.0f cells/hr.\n',n_cg);
in_p = ((n_cg-cg)/cg)*100 ;//[increase percent]
printf(' Increase percent of cell growth rate is %.1f %% .\n',in_p);