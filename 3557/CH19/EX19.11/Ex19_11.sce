//Example 19.11//

EK=(-7112);//eV // the innermost electron orbital shell
EL=(-708);//eV // the innermost electron next shell
Eka=abs(EK-EL)
mprintf("Eka = %i eV",Eka)
EM=(-53);//eV //heavier electrons
Ekb=abs(EK-EM)
mprintf("\nEkb = %i eV",Ekb)
EKLL=abs(EK-EL)-abs(EL)
mprintf("\nEKLL = %i eV",EKLL)

