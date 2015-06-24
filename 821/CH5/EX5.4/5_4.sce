dH=-817;
dU=-820;
P1=1;//initial pressure in atm//
V=1;//volume in litre//
K=(1.99*10^-3)/0.082;//multiplying factor to convert litre atm to calories//
P2=P1+((dH-dU)/(V*K));//final pressure in atm//
printf('Final pressure of the system=P2=%fatm',P2);
printf('\nIn this problem P1 and P2 are in atm and V being in litres,The VdP term in litre atm.\ndH and dU are in Kcal and so the VdP term is converted into Kcal.\nIt is seen that the pressure developed is enormous.\nThis takes place in a confined space,an explosion occurs.\nThe final pressure P2 can also be calculated from the ideal gas equation PV=nRT which gives the same result.');//in textbook the answer given is bit wrong and it should be one we get through execution//
