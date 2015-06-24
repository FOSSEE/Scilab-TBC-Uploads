omega=exp(%i*120/180*%pi)
Vab=400
Vca=400*omega
Vbc=400/omega

Iab=Vab/(100*%i)
Ibc=Vbc/(-50*%i)
Ica=Vca/80

Ia=Iab-Ica       ///calaculation mistake in the book here
Ib=Ibc-Iab
Ic=Ica-Ibc

disp(Ia,Ib,Ic)