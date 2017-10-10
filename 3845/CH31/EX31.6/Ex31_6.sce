//Example 31.6
R=6*10^6;//Activity (Ci)
t_half=30.17;//Half-life of Cs-137 (y),See Appendix B
N=R*(3.7*10^10)*t_half*(3.16*10^7)/0.693;//Number of nuclei
//In the above equation,curies are converted to becquerels and years to seconds by multiplying with (3.7*10^10 Bq/Ci) and (3.16*10^7s/y) respectively
m=(137/(6.02*10^23))*(3.1*10^26);//Mass of Cs-137 released (g)
printf('Mass of Cs-137 released = %0.1f kg',m/1000)
//There is a small variation in the value used in the textbook and the one found in Appendix B
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
