clc
R=8.314*(10^3)//universal gas constant
T=473 //temperature of bath in kelvin
v1=0.6 //volume of steel vessel in metre-cube
P=R*T/v1 //pressure developed by ideal gas law
mprintf("P=%fMPa\n",P*10^-6)//ans may vary due to roundoff error
a=453.046*(10^-3) //vander waals constant in Pa(metre-cube/mol)^2
b=0.057*(10^-3)//vander waals constant in metre cube/mol
P=((R*T)/(v1-b))-(a/(v1*v1))//pressure by vander waals equation
mprintf("P=%fMPa\n",P*10^-6)//ans may vary due to roundofff error
Pc=51.17 //pressure in bars
Tc=283.1 //temperature in kelvin
a=(0.42748*R*R*(Tc^2.5))/((Pc*10^5)*(T^0.5))//Redlich-Kwong equation
b=0.0867*R*Tc/(Pc*(10^5))//Redlich-Kwong equation
mprintf("a=%fPam^6/mol square\n",a*10^-6)//ans may vary due to roundoff error
mprintf("b=%fm^3/mol\n",b*10^-3)//ans may vary due to roundoff error
P=(R*T/(v1-b))-(a/(v1*(v1+b))) //pressure by Redlich-Kwong euation
mprintf("P=%fMPa",P*10^-6)//ans may vary due to roundoff error












