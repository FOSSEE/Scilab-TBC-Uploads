//Chapter-2, Example 2.9, Page 2.16
//=============================================================================
clc
clear

//INPUT DATA
N1=760;//Number of turns in the primary
N2=180;//Number of turns in the secondary
I2=70;//Secondary load current in A
cosq=0.8;//Secondary load power factor
I1=30;//Primary current in A
cosq1=0.71;//Primary current power factor

//CALCULATIONS
K=(N2/N1);//Ratio of turns
I2i=(K*I2);//Secondary current in A
I1i=complex((I1*cosq1),(I1*sind(acosd(cosq1))));//Primary current in A
I2c=complex((I2i*cosq),(I2i*sind(acosd(cosq))));//Secondary current in A
A1=sqrt((real(I1i))^2+(imag(I1i))^2);
A2=(atand(imag(I1i)/real(I1i)));
B1=sqrt((real(I2c))^2+(imag(I2c))^2);
B2=(atand(imag(I2c)/real(I2c)));
C=(A1*cosd(A2))-(B1*cosd(B2));
D=(A1*sind(A2))-(B1*sind(B2));
q=atand(D/C);//Phase angle in degree
p=cosd(q);//Power factor
Io=(D/sind(q));//No load current in A

//OUTPUT
mprintf('No load current of the transformer is %3.2f A and its phase angle is %3.2f degree',Io,q)

//=================================END OF PROGRAM==============================
