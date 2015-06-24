//example 14.2//
//entity construction for EXOR circuit//
clc
//clears the screen//
clear
//clears already existing variables//
disp('Let the name of entity be Circuit_Fig. It has two input ports A and B and one output port Y. The entity declaration for this circuit will be')
disp(' ENTITY Circuit_Fig IS')
disp('PORT(A,B : IN BIT; OUT BIT);')
disp('END Circuit_Fig;')
disp('From this entity declaration, we observe that although this circuit consists of AND, OR and NOT gates, the circuit itself is an entity and the entity declaration gives no information about the structure or behaviour of the circuit')
