//Example 6.13//
a=514;//K //Kelvin //Temperature
b=273;//K //Kelvin //Temperature
apt=a+b
mprintf("apt = %i K for eta = 10^13.4P",apt)
c=696;//K //Kelvin //Temperature
spt=c+b//for eta=10^7.6P
mprintf("\n spt = %i K",spt)
i=(10^13.4); //P //Pascal //preexponential constant
j=(10^7.6);//P // Pascal //preexponential constant
f=8.314;//J/(mol K) //universal gas constant
a1=log(i/j); //(Taking antilog of i and j to remove exponential term)
//mprintf("\na1 = %f ",a1)
b1=(1/apt)-(1/spt);//(subtracting the temperature)
//mprintf("\nb1 = %e ",b1)
Q=(a1/b1)*f
mprintf("\nQ = %e J/mol  = 465kJ (As 1K = 10^3)",Q)
eta0=i*%e^-((Q)/(f*apt))
mprintf("\n eta0 = %e P",eta0)
h=10^4;//given
//for eta=10^4 P and eta=10^8 P
//for eta = 10^4
T=Q/((f)*log(h/eta0))
mprintf("\n T = %i K = 858 degree C",T)
//for eta=10^8P
h1=10^8;//P //Pascal 
T1=Q/((f)*log(h1/eta0))
mprintf("\n T1 = %i K = 680 degree C",T1)
//Therefore working range = 680 to 858 degree C

//For melting range eta=50 to 500 P
 eta=50;//P //Pascal
T2=Q/((f)*log(eta/eta0))
mprintf("\n T2 = %i K = 993 degree C",T2)
 eta1 = 500;// P //Pascal
T3=Q/((f)*log(eta1/eta0))
mprintf("\n T3 = %i K = 931 degree C",T3)
mprintf("\n melting range = 931 to 993 degree C")
