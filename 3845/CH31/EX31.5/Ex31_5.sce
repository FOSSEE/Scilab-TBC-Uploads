//Example 31.5
N_C12=(6.02*10^23)/12*1000;//Number of carbon nuclei (C-12) in a kg
N_C14=N_C12*(1.3*10^-12);//Number of carbon nuclei (C-14) in a kg
t_half=5730;//Half-life of C-14 (y), See Appendix B
R=0.693*N_C14/t_half;//Activity (y^-1 or decays per year)
R=R*1/(3.16*10^7);//Activity (Bq or decays per second)
printf('\nActivity R = %0.1f Bq',R)
R=R/(3.7*10^10);//Activity (Ci)
printf('\nActivity R = %0.2f nCi',R*10^9)
//Answers vary due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
