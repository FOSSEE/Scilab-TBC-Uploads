//Transport Processes and Seperation Process Principles
//Chapter 5
//Example 5.2-1
//Principles of Unsteady State Heat Transfer
//given data
//english units  
r=1/12;//radius
x1=r/3;//ratio of volume to area
h=2;//convective coefficient
k=25;//thermal conductivity
Bi=(h*x1)/k;//biot number
Cp=0.11;//specific heat
rho=490;//density

if(Bi<0.1)
    M=h/(Cp*rho*x1);
    Tinf=250;//constant temp
    T0=800;//initial temp
    t=1;
    T=((T0-Tinf)*((2.718)^(-M*t)))+Tinf;//solving arhenius equation
    mprintf("the temp in english units %f deg F",T)
else 
    mprintf("some other method must be employed")
end
//si units
rsi=25.4/1000;
x1si=rsi/3;
hsi=11.36;
ksi=43.3;
Bisi=(hsi*x1si)/ksi;
Cpsi=0.4606*1000;
rhosi=7849;
if(Bisi<0.1)
    Msi=hsi/(Cpsi*rhosi*x1si);
    Tinfsi=394.3;
    T0si=699.9;
    tsi=3600;
    Tsi=((T0si-Tinfsi)*((2.718)^(-Msi*tsi)))+Tinfsi;//solving arhenius equation
    mprintf(" the temp in si units %f deg K",Tsi)
else 
    mprintf("some other method must be employed")
end
    

