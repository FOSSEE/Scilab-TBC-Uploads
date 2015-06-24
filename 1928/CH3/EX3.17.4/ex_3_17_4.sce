//Chapter-3,Example3_17_4,pg 3-36

//As C=e0*er*A/d

e0=%e                                   //absolute permitivity

Ag=%s

Ap=Ag                                   //Assuming Area of glass plate and plastic film is same

//for glass

erg=6                                   //relative permitivity

dg=0.25                                 //thickness

Cg=e0*erg*Ag/dg

//for plastic film

erp=3                                   //relative permitivity

dp=0.1                                  //thickness

Cp=e0*erp*Ap/dp

m=Cg/Cp

printf("since Cg/Cp=")

disp(m)

printf("plastic film holds more charge")
