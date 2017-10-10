//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 6
//example 6.1
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vs=150;//source voltage of DC shunt motor in volt
n1=1200;//synchronous speed in rpm
Ra=1;//armature resistance in ohm
Rf=150;//field resistance in ohm
I=10;//line current in ampere
If=(Vs/Rf);//Field current before adding the resistance in ampere
disp('a)Calculate the resistance that should be added to the armature circuit to reduce the speed by 50%')
//consider that the motoring point 1 represents without adding resistance & point 2 for the operating point at 50% load reduction
Ia1=I-If;//armature current without adding resistance
n2=0.5*n1;//50% speed is reduced
Ea1=Vs-(Ia1*Ra);//speed equation at operating point 1
Radd=Ea1/(2*Ia1);//Obtained from the equation of Ea1/Ea2=n1/n2
disp(Radd,'The resistance which should be added to reduce the speed by 50% in ohm is:')
disp('b)To calculate the motor efficiency')
Prloss=100;//rotational loss in watt
Pfloss=If^(2)*Rf;//field loss in watt
Paloss=Ia1^(2)*Ra//armature losses in watt
Pin=Vs*I;//Input power in watt
Ploss=Prloss+Pfloss+Paloss;//Total losses before adding armature resistance in watt
Ploss1=Prloss+Pfloss+Paloss*(Ra+Radd);//Total losses after adding armature resistance in watt
eff=((Pin-Ploss)/Pin)*100;//efficiency of the motor without adding resistance in % 
eff1=((Pin-Ploss1)/Pin)*100;//efficiency of the motor with adding resistance in %
disp(eff,'The efficiency of the motor without adding resistance in % is:')
disp(eff1,'The efficiency of the motor with adding resistance in % is:')
disp('c)To calculate the resistance to be added to the armature for the holding operation')
//set motor speed equal to zero
Radd=(Vs/Ia1)-Ra;
disp(Radd,'The resistance to be added to the armature for the holding operation in ohm is:')
