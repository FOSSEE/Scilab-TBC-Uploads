//example1:

printf(" Given:")
disp("The value of Rin=Rout=100kohms,Rload=1kohm,Kv=100")//To display given values
Rin=100//assigning given values
Rout=100
Rload=1
Kv=100
disp("All resistances are in kohms")
disp("The whole two stage amplifier is fed by a generator having a voltage of Eg=1mV when no load and having self resistance Rg=20kohms")
Eg=(1/1000)//Eg converted to volts
Rg=20//all resistances are in kohms
disp("Since amplifiers are identical")//given
disp("Rin1=Rin")
disp("Rin2=Rin")
disp("Rout1=Rout")
disp("Rout2=Rout")
Rin1=Rin//assigning given values
Rin2=Rin
Rout1=Rout
Rout2=Rout
disp("Vout2 is given by equation")
disp("Vout2=((Eg)*(Rin1/(Rg+Rin1)))*(Kv)*(Rin2/(Rout1+Rin2))*(Kv)*(Rload/(Rout2+Rload))")
Vout2=((Eg)*(Rin1/(Rg+Rin1)))*(Kv)*(Rin2/(Rout1+Rin2))*(Kv)*(Rload/(Rout2+Rload))//equation for Vout2
printf(" Therefore Vout2=%f",Vout2)
disp("Vin is given by equation ")
disp("Vin=(Eg*(Rin1/Rg+Rin1))")
Vin=(Eg*(Rin1/(Rg+Rin1)))//Equation for Vin
disp("Now overall gain ")
disp("Av=(Vout2/Vin)")
Av=(Vout2/Vin)//Equation for Av
printf(" Therefore Vout2=%f and overall voltage gain Av=%f",Vout2,Av)//To print the required values.