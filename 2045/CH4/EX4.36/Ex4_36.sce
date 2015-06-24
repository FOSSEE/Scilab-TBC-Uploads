//example 36
clear
ic=5.2*10^-3;//ampere
ib=50*10^-6;//ampere
icb=2*10^-6;//ampere
beta1=(ic-icb)/(ib+icb);
disp("beta   =   "+string((beta1)));
ie=ib+ic;

disp("ie   =   "+string((ie))+"ampere");
alpha1=(ic-icb)/ic;
disp("alpha   =   "+string((alpha1)));



ic=10*10^-3;//ampere
ib=(ic-(beta1+1)*(icb))/beta1;


disp("ib   =   "+string((ib))+"ampere");//correction in the book
