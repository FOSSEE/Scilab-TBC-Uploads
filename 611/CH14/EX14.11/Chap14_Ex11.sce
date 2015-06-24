// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-14,Example 11,Page 506
//Title: Primary reactions 
//================================================================================================================
clear 
clc


//INPUT

//The reactions occuring during steam reformation are given by:
//CH4(g)+H2O(g)---->CO(g)+3H2(g)
//CO(g)+H2O(g)----->CO2(g)+H2(g)
//CH4(g)+2H2O(g)---->CO2(g)+4H2(g)
//CO2(g)---->CO(g)+(1/2)O2(g)
//CH4(g)+2O2(g)---->CO2(g)+2H2O(g)
//CH4(g)+O2(g)---->CO(g)+H2O(g)+H2(g)

//Let CH4=A1,H2O=A2,CO=A3,H2=A4,CO2=A5,O2=A6

stoichio_matrix=[-1 -1 1 3 0 0;0 -1 -1 1 1 0;-1 -2 0 4 1 0;0 0 1 0 -1 0.5;-1 2 0 0 1 -2;-1 1 1 1 0 -1]//Framing the stoichiometric coefficient matrix



//CALCULATION

r=rank(stoichio_matrix);//Determining the rank of the given matrix(number of independent row/columns),which is indicative of the number of primary reactions

//Performing elementary row operations to obtain diagonal elements as 0 or 1 and all elements below the diagonal as zero
stoichio_matrix(1,:)=-stoichio_matrix(1,:);
stoichio_matrix(3,:)=stoichio_matrix(3,:)+stoichio_matrix(1,:);
stoichio_matrix(5,:)=stoichio_matrix(5,:)+stoichio_matrix(1,:);
stoichio_matrix(6,:)=stoichio_matrix(6,:)+stoichio_matrix(1,:);
stoichio_matrix(2,:)=-stoichio_matrix(2,:);
stoichio_matrix(3,:)=stoichio_matrix(3,:)+stoichio_matrix(2,:);
stoichio_matrix(5,:)=stoichio_matrix(5,:)-(3*stoichio_matrix(2,:));
stoichio_matrix(6,:)=stoichio_matrix(6,:)-(2*stoichio_matrix(2,:));
x=stoichio_matrix(:,3);
y=stoichio_matrix(:,4);
stoichio_matrix(:,3)=y;
stoichio_matrix(:,4)=x;
stoichio_matrix(5,:)=stoichio_matrix(5,:)+(4*stoichio_matrix(4,:));
stoichio_matrix(6,:)=stoichio_matrix(6,:)+(2*stoichio_matrix(4,:));



//OUTPUT
mprintf('\n The stoichiometric coefficient matrix after performing the elementary row operations=\n');
disp(stoichio_matrix);
mprintf('\n The number of primary reactions=%d\n',r);
mprintf('\n The non zero rows are (1,2,4)\n');
mprintf('\n The primary reactions are: CH4(g)+H2O(g)--->CO(g)+3H2(g), CO(g)+H2O(g)--->CO2(g)+H2(g), CO2(g)--->CO(g)+(1/2)O2(g)\n');

//===============================================END OF PROGRAM===================================================



