printf("\t Example 2.2 \n");
printf("\t approximate values are mentioned in the book \n");
La=8/12; // Thickness of firebrick wall,ft
Lb=4/12; // Thickness of insulating brick wall,ft
Lc=6/12; // Thickness of building brick wall,ft
Ka=0.68; // themal conductivity of firebrick,Btu/(hr)*(ft^2)*(F/ft)
Kb=0.15; // themal conductivity of insulating brick,Btu/(hr)*(ft^2)*(F/ft)
Kc=0.40; // themal conductivity of building brick,Btu/(hr)*(ft^2)*(F/ft)
A=1; // surface area,ft^2
Ta=1600; // temperature of inner wall,F
Tb=125; // temperature of outer wall.F
Ra=La/(Ka)*(A); // formula for resistance,(hr)*(F)/Btu
printf("\t resistance offered by firebrick : %.2f (hr)*(F)/Btu \n",Ra);
Rb=Lb/(Kb)*(A); // formula for resistance,(hr)*(F)/Btu
printf("\t resistance offered by insulating brick : %.2f (hr)*(F)/Btu \n",Rb);
Rc=Lc/(Kc)*(A); // formula for resistance,(hr)*(F)/Btu
printf("\t resistance offered by buildingbrick : %.2f (hr)*(F)/Btu \n",Rc);
R=Ra+Rb+Rc; // total resistance offered by three walls,(hr)*(F)/Btu
printf("\t total resistance offered by three walls : %.2f (hr)*(F)/Btu \n",R);
Q=(1600-125)/4.45; // using formula for heat loss/ft^2,Btu/hr
printf("\t heat loss/ft^2 : %.0f Btu/hr \n",Q);
// T1,T2 are temperatures at interface of firebrick and insulating brick, and insulating brick and building brick respectively,F
delta=(Q)*(Ra); // formula for temperature difference,F
printf("\t delta is : %.0f F \n",delta);
T1=Ta-((Q)*(Ra)); // temperature at interface of firebrick and insulating brick,F
printf("\t temperature at interface of firebrick and insulating brick :%.0f F \n",T1);
deltb=Q*(Rb);
printf("\t deltb is : %.0f F \n",deltb);
T2=T1-((Q)*(Rb)); //temperature at interface of insulating brick and building brick,F
printf("\t temperature at interface of insulating brick and building brick :%.0f F \n",T2);
//end
