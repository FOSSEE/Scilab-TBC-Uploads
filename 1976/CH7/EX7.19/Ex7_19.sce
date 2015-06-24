
//To determine the value of resistance to be connected in the motor circuit
//Page 411
clc;
clear;

N1=600; //Intial Speed
E1=[252,522,750,900,951]; // Voltages At 600 RPM
Ia=[20,40,60,80,100]; // Field Current
N2=400; //Changed Speed
E2=E1.*(N2/N1); // Voltages at 400 RPM
T=350;
Raw = 0.05; //Armature and Winding Resistance
printf('Field Current in A:\n')
disp(Ia)
printf('\nThe Respective Voltages at 400 rpm (V):\n')
disp(E2)

P=E2.*Ia; //To find the value of E and Ia for the Required Speed

PI=2*%pi*N2*T/60; //Power Input

//To find the Portion of the Curve EIa vs Ia , under the currrent limits where our Power Input is located
for i = 1:5
    X=P(i)-PI; //Difference of Powers
    if(abs(X)+X==0)
        continue;
    else
        L=i-1; //Lower Limit
        H=i; // Upper limit
        break
    end
end

Ip=Ia(H)-Ia(L); //To find the Current Period
Im=Ia(L); //Starting Value of Current in the Particular Portion of the Curve

I=Im+(((PI-P(L))/(P(H)-P(L)))*Ip); //Current Required for 400 rpm
R=PI/(I^2); //Total Resistance required in the circuit
Re=R-Raw; //External Resistance

printf('\n\nThe External Circuit that needs to connected in the motor circuit to limit the speed to 400 rpm is %g Ohm\n',Re)
