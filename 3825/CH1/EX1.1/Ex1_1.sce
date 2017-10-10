clc
D=50 //diameter of bell jar in cms
Pin=25 //pressure inside bell jar after evacuation with vaccum pump in pascals
Pat=101325 //atmospheric pressure in Pascals
P=Pat-Pin //net pressure acting on bell jar in Pascals
mprintf('Net pressure acting is%iPa\n',P)
A=%pi*(D/100)*(D/100)/4 //area of flat plate on which bell jar is resting in metre square with D converted to metres
F=P*A//net force acting on flat plate in Newton
mprintf('Minimum force required to lift the bell jar off the plate is%fkN',F/1000)//ans may vary due to roundoff error with F converted into kilo newtons 






