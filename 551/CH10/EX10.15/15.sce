clc

m_water=60000; //kg/s
c=4.186;
t1=30; //0C
t2=35; //0C
Q=m_water*c*(t2-t1);

h1=76.5; //kJ/kg
W1=0.016; //kg/kg of air 
h2=92.5; //kJ/kg 
W2=0.0246; //kg/kg of air

m_air=Q/(h2-h1);

A=m_air/10; //Quantity of air handled per fan
disp("Quantity of air handled per fan=")
disp(A)
disp("kg/h")


B=m_air*(W2-W1);
disp("Quantity of make up water=")
disp(B)
disp("kg/h")