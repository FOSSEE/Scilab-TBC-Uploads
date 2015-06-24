clear 
clc
disp('Exa-9.4');
hc=1240;        //in eV.nm
m=0.5*1.008*931.5*10^6;              //mass of hydrogen atom
Req=0.074;                          //equivalent radius
a=((hc)^2)/(4*(%pi^2)*m*(Req^2));  //reduced mass of hydrogen atom
for L=1:3,
        delE= L*a; printf('The value of energy is %f eV\n',delE);                  
        w=(hc)/delE;printf('The respective wavelength is is %f um\n',w*10^-3);  
end

