clear all; clc;

disp("For N/(T01^1/2)=40,the following data of p02/p01,τ/p01 and Eta can be obtained from figure 8.9a")
//let x=p02/p01
x=[0.70 0.75 0.8];
//let y=τ/p01
y=[8.7 5.3 2.2];
Eta=[0.81 0.64 0.41];
//let z=Ps/(p01*((T01)^1/2))
z=[0.066 0.040 0.017];
//let i=m*((T01)^1/2)/p01
i=[2.48 2.34 2.0];
table=[x' y'Eta' z' i'];
disp(" The columns of the table are in the order p02/p01 τ/p01 Eta Ps/(p01*((T01)^1/2)) and m*((T01)^1/2)/p01")
disp(table)

disp("The power and mass flow rate have to be obtained with the following manipulations. ")
disp("Frpm Ps=τ*omega, wee obtain:")
disp("Ps/(p01*((T01)^0.5))=τ*N*pi/(30*550*p01*((T01)^0.5))")
disp("Also from Ps/m=Eta*Cp*T01[1-(p02/p01)^((k-1)/k)] we obtain")
disp("m*(T01^0.5)/p01={[Ps/(p01*T01^0.5)]/(Eta*Cp)}*[1-(p02/p01)^((k-1)/k)]^-1")
disp("Where (k-1)/k=0.40/1.4")

//Let j=(k-1)/k=0.40/1.4
j=0.40/1.4
printf("Thus=(k-1)/k %0.4f",j)

disp("And Cp= 0.24*Btu/(1bm*R)")
Cp=0.24*778/(550)
printf("Thus Cp= %0.4f hp-s/(lbm*R)",Cp)

















