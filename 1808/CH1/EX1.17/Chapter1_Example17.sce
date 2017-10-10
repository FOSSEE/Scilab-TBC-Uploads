clc
clear
//INPUT DATA
BP4=16.25;//Total Brake power
BP1c=11.55;//Brake power of 1st cylinder
BP2c=11.65;//Brake power of 2nd cylinder
BP3c=11.70;//Brake power of 3rd cylinder
BP4c=11.50;//Brake power of 4th cylinder
mf=0.08;//mass flow rate in kg/s
cv=42500;//calorific value
d=9;//bore
L=9;//stroke
Vc=65;//clearance volume in cm^3
g=1.4;//inert gas constnat


//CALCULATIONS
IP1=BP4-BP1c;//Indicated power of 1st cylinder
IP2=BP4-BP2c;//Indicated power of and cylinder
IP3=BP4-BP3c;//Indicated power of 3rd cylinder
IP4=BP4-BP4c;//Indicated power of 4th cylinder
IP=IP1+IP2+IP3+IP4;//Total indicated power in kW
nbt=(BP4*100/(mf*cv))*100;//Brake thrmal efficiency in percentage
nit=(IP*100/(mf*cv))*100;//Indicated thermal efficiency in percentage
Vs=(3.14*(d^2)*L/4);//swept volume in cm^3
Rc=(Vs+Vc)/Vc;//Compression ratio
no=(1-(1/Rc^(g-1)));//Air standard efficiency in percentage
nr=(nit/no);//Relative efficiency in percentage

//OUTPUT
printf('(i)Indicated power is %3.2f kW \n (ii)indicated thermalefficiency %3.2f percentage \n brake efficiency is %3.2f percentage \n (iii)realtive efficiency is %3.2f percentage',IP,nit,nbt,nr)
