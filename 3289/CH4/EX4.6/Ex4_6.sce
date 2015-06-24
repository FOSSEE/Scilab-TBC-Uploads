clc

a=[700 14 0; 14 -350 0; 0 0 -350]
disp(a)
c=[-660 -7 0; -7 -350 0; 0 0 -350]
disp(c)
sigmau=2400 //MPa
K=1
sigmae=800 //MPa
Nf=1 //cycles for SAE
Nff=10^3 //cycles for Gerber
Ne=10^8 //cycles

sigmaxa=(700+660)/2
disp(sigmaxa,"alternating and mean values of stresses in MPa is= ")
sigmaxm=(700-660)/2
disp(sigmaxm,"alternating and mean values of stresses in MPa is= ")
sigmaya=(-350+350)/2
disp(sigmaya,"alternating and mean values of stresses in MPa is= ")
sigmaym=(-350-350)/2
disp(sigmaym,"alternating and mean values of stresses in MPa is= ")
sigmazm=(-350-350)/2
disp(sigmazm,"alternating and mean values of stresses in MPa is= ")
tauxya=(14+7)/2
disp(tauxya,"alternating and mean values of stresses in MPa is= ")
tauxym=(14-7)/2
disp(tauxym,"alternating and mean values of stresses in MPa is= ")

sigmaea=sqrt(((sigmaxa-sigmaya)^2+(sigmaya-sigmaxa)^2+6*(tauxya)^2)/2)
disp(sigmaea,"in MPa is =")
sigmaem=sqrt(((sigmaxm-sigmaym)^2+(sigmaym-sigmaxm)^2+6*(tauxym)^2)/2)
disp(sigmaem,"in MPa is= ")

//solution a: 
sigmacr=sigmaea/(1-(sigmaem/2400))
disp(sigmacr)
b=log(sigmau/sigmae)/log(1/Ne)
disp(b)

Ncr=1*(sigmacr/2400)^(1/b)
disp(Ncr,"in cycles is= ")

//solution b:
sigmacr=sigmaea/(1-(sigmaem/sigmau)^2)
disp(sigmacr,"in MPa is= ")
b=log(0.9*2400/sigmae)/log(Nff/Ne)
disp(b)

Ncr=Nff*(sigmacr/(0.9*2400))^(-11.587)
disp(Ncr,"in cycles is= ")
