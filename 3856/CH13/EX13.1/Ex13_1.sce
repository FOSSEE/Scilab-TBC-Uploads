//To Determine the value of Km and Vmax of Enzyme and to Calculate Kinetic Paramters imposed by inhibitors

//Example 13.1

clc;

clear;

s=[5*10^-4,1*10^-3,2.5*10^-3,5.0*10^-3,1.0*10^-2];//Substrate Concentration

v0no=[1.25*10^-6,2.0*10^-6,3.13*10^-6,3.85*10^-6,4.55*10^-6];//Initial Rate of an Enzyme Catalysed Concentration with no inhibitor

voA=[5.8*10^-7,1.04*10^-6,2.00*10^-6,2.78*10^-6,3.57*10^-6];//Initial Rate of an Enzyme Catalysed Concentration with inhibitor A

voB=[3.8*10^-7,6.3*10^-7,1.00*10^-6,1.25*10^-6,1.43*10^-6];//Initial Rate of an Enzyme Catalysed Concentration with inhibitor B

for i=1:5
    Srec(i)=1/s(i);//Calculating the reciprocals of Substrate Concentrations
end 

for i=1:5
    v0norec(i)=1/v0no(i);//Reciprocal of Initial Rate of an Enzyme Catalysed Concentration with no inhibitor
end

for i=1:5
    v0Arec(i)=1/voA(i);//Reciprocal of Initial Rate of an Enzyme Catalysed Concentration with inhibitor A
end 

for i=1:5
    v0Brec(i)=1/voB(i);//Reciprocal of Initial Rate of an Enzyme Catalysed Concentration with inhibitor B
end

plot(Srec,v0norec);//Graph between Reciprocal of Substrate Concentration and Reciprocal of Initial Rate of an Enzyme Catalysed Concentration with no inhibitor

m1=(v0norec(2)-v0norec(1))/(Srec(2)-Srec(1));//Slope of 1st Graph

vmax=1/(-m1*Srec(3)+v0norec(3));//Maximum Rate of reaction

Km=m1*vmax;//Maximum value of Kinetic Parameter

printf("The value of vmax=%.2f*10^-6 M s^-1",vmax*10^6);

printf("\nThe value of Km=%.1f*10^-3 M",Km*10^3)

plot(Srec,v0Arec);//Graph between Reciprocal of Substrate Concentration and Reciprocal of Initial Rate of an Enzyme Catalysed Concentration with inhibitor A

m2=(v0Arec(2)-v0Arec(1))/(Srec(2)-Srec(1));//Slope of 2nd Graph

I=8.0*10^-3;//Initial Concentration

K1=I/((m2*vmax/Km)-1);//Kinetic Parameter with Inhibitor A

printf("\nThe value of kinetic parameter with inhibitor A=%.1f*10^-3 M",K1*10^3)

plot(Srec,v0Brec);//Graph between Reciprocal of Substrate Concentration and Reciprocal of Initial Rate of an Enzyme Catalysed Concentration with inhibitor B

m3=(v0Brec(1)-v0Brec(3))/(Srec(1)-Srec(3));//Slope of 3rd Graph

K2=I/((m3*vmax/Km)-1);//Kinetic Parameter with Inhibitor B

printf("\nThe value of kinetic parameter with inhibitor B=%.1f*10^-3 M",K2*10^3)
