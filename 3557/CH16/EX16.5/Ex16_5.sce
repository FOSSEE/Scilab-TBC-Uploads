//Example 16.5//
h=(0.663*10^-33);//J s //Joule-second//Plank's constant
c=(3.00*10^8);//m/s //meter per second //speed of light
l=400*10^-9;//nm// wavelength
a=6.242*10^18;//eV/J //1 Coulomb of charge
dEb=(h*c)/l     
mprintf("dEb = %e V",dEb)
dEb1=dEb*a
mprintf("\ndEb1 = %f eV  (Answer calculated in the textbook is wrong)",dEb1) 
l1=700*10^-9;//nm //wavelength
dEr=(h*c)/l1
mprintf("\ndEr %e eV",dEr)
dEr1=dEr*a
mprintf("\ndEr1= %f eV",dEr1)
mprintf("\ndelE range: 2.84*10^-19 to 4.97*10^-19J (=1.77 to 4.88 eV)")
