//Fibre Optics : example 18-3 : pg(868)
w=22;//spectral width of LED
l=2;//length of fibre
d=95;//dispersion value
p=d*w;//pulse dispersion
pt=p*l;//total pulse dispersion
printf("\npulse dispersion = %.f ps/km",p);
printf("\ntotal pulse dispersion = pulse dispersion*length = %.f ps/km",pt);