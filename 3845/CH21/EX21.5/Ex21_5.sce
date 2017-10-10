//Example 25.1
R1=6;//Resistance (ohm)
R2=2.5;//Resistance (ohm)
R3=1.5;//Resistance (ohm)
r1=0.5;//Internal resistance (ohm)
r2=0.5;//Internal resistance (ohm)
emf1=18;//Emf 1 (V)
emf2=45;//Emf 2 (V)
//A set of three equations are required since there are three unknowns-currents I1,I2 and I3
//Equation 1: I1=I2+I3 (Using Kirchoff's junction rule, See Equation 21.54)
//Equation 2: -I1*R1-I2*(R2+r1)=-emf1 (Using Kirchoff's loop rule in loop abcdea and rearranging, See Equation 21.55)
//Equation 3: I1*R1+I3*(R3+r2)=emf2 (Using Kirchoff's loop rule in loop aefgha and rearranging, See Equation 21.57)
A=[1 -1 -1;-R1 -(R2+r1) 0;R1 0 (R3+r2)];//Matrix containing coefficients of variables
C=[0 -emf1 emf2]';//Matrix containing constants
//Equation is of the form A*B=C, therefore
B=inv(A)*C;//To compute values of variables
//we use the form A*B=C
for i=1:1:3
    printf('Current I%d = %0.2f A\n',i,B(i,1))
end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
