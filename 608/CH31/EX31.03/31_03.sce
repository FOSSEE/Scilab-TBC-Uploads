//Problem 31.03: A balanced star-connected 3-phase load is shown in Figure 31.4. Determine the value of the line currents IR, IY and IB using mesh-current analysis.

//initializing the variables:
rv1 = 415; // in volts
rv2 = 415; // in volts
thetav1 = 120; // in degrees
thetav2 = 0; // in degrees
R = 3 + %i*4; // in ohm

//calculation:
//voltages
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
//Two mesh currents I1 and I2 are chosen as shown in Figure 31.4.
//Two loops are chosen. The choice of loop directions is arbitrary.
//using kirchoff rule in 2 loops
//two eqns obtained
//2*R*I1 - R*I2 = V1
//-1*R*I1 + 2*R*I2 = V2
//using determinants
d1 = [V1 -1*R; V2 2*R]
D1 = det(d1)
d2 = [2*R V1; -1*R V2]
D2 = det(d2)
d = [2*R -1*R; -1*R 2*R]
D = det(d)
I1 = D1/D
I2 = D2/D
I1mag = (real(I1)^2 + imag(I1)^2)^0.5
//line current IR
IR = I1
//line current IB
IB = -1*I2
//line current IY
IY = I2 - I1

printf("\n\n Result \n\n")
printf("\n current, IR is %.2f + (%.2f)i A, current, IB is  %.2f + (%.2f)i A and current, IY is %.2f + (%.2f)i A",real(IR), imag(IR),real(IB), imag(IB),real(IY), imag(IY))