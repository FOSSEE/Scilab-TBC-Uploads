clear
clc
//to find work per cycle required to operate refrigerator
//to find heat per cycle discharged to the room

//Given:
//coefficient of performance of refrigerator
K = 4.7
//rate of heat extraction
QL = 250//in J/cycle

//Solution:
//applying laws of thermodynamics
//applying formula for refrigeration cycle
//work per cycle required to operate refrigerator
W = QL/K//in J/cycle
//heat per cycle discharged to the room
QH = W+QL//in J/cycle

printf ("\n\n Work per cycle required to operate refrigerator W = \n\n %3i J/cycle" ,W);
printf ("\n\n Heat per cycle discharged to the room QH = \n\n %3i J/cycle" ,QH);
