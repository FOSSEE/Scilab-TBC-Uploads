//Variable declaration
beta=100.       //current gain
rd=50*10**3     //internal dynamic resistance(ohms
gm=5*10**-3     //transconductance(mS)
R1=50*10**3     //resistance(ohms)   
R2=10*10**3      //resistance(ohms)
Rs=10*10**3      //source current(ohms) 
Rg=1*10**6.      //gate resistance(ohms)
Rd=10*10**3      //drain resistance(ohms)

//Calculations                      
Vgs=(Rg/(Rs+Rg))                 //gate to source voltage (V) as Vgs=Vs((Rg/(Rs+Rg))   
Av=-Vgs*gm*((rd*Rd)/(rd+Rd))      //voltage gain,Av=Vo/Vs and Vo=-gmVgs(rd||Rd)
Ai=Av*((Rs+Rg)/Rd)               //current gain

//Results
printf ("source to load voltage gain is %.f",Av)
printf ("source to load current gain is %.f",Ai)
