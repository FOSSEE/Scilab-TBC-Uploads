clc
//Variable Initialisation
V=230//Input Voltage of motor in volts
Vdc=240//Dc equivalent input to motor in Volts
Po=746//Power rating of DC motor in Watt
N=500//Rated Speed of Motor in rpm
Ia=4.1//Armature Current in Ampere
Ra=7.56//Armature resistance in ohm
La=55e-3//Armature inductance in Henry
f=500//Chopper Frequency
Tmin=5//minimum load Torque in N-m
//Solution
T=(1/f)//Period of Chopper
w=2*%pi*N*(1/60)
Eb=V-(Ia*Ra)//Back emf in Volts
k=Eb*(1/w)
Pin=V*Ia//Armature Power Input
L=Pin-Po-(Ia*Ia*Ra)//Rotational Loss
Ta=L/w
Ta1=Tmin+Ta//Average internal Torque in N-m
Ia1=Ta1/k
E0=Eb+(Ia1*Ra)
ton=(E0/Vdc)*T
ton11=ton*1000//ton in microseconds
ta=(La/Ra)
A=log(((Eb/Vdc)*(%e^(T/ta)-1))+1)
ton1=A*ta
ton12=ton1*1000//ton in microseconds
E01=(ton1/T)*Vdc
Ia2=(E01-Eb)/Ra
Ta2=k*Ia2
Tc=Ta2-Ta
printf('\n\n ton for minimum load torque of 500rpm=%0.1f 10^(-3)sec\n\n',ton11)
printf('\n\n ton for current is continuous at 500rpm=%0.1f 10^(-3)sec\n\n',ton12)
if ton>ton1 then
    disp("Current (Ia) is continuous") 
else
    disp("Current (Ia) is not continuous")
end
printf('\n\n The coupling Torque for minimum value of ton obtain=%0.1f N-m\n\n',Tc)

