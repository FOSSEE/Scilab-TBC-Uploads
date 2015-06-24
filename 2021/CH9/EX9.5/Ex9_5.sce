//Finding of Percentage Error in Discharge
//Given
Cd=0.6;
q=40000;
L=0.5;
H=0.2;
g=9.81;
//To Find
H1=q/((2/3)*Cd*L*sqrt(2*g));
H2=H1^(2/3);
H3=H2/100;
dq=(3/2)*(H/H3)*100;
disp("Percentage Error in Discharge ="+string(dq)+" Percentage");
