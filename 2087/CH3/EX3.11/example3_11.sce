

//example 3.11
//calculate Dischage required at head of canal
clc;
//Given
Cr=2;            //crop ratio
A=80000;         //Area of field
CI=85;           //percent field culturable irrigable
IK=30;           //irrigation intensity during kharif season
IR=60;           //irrigation intensity for rabi season
DuK=800;           //Duty of water for kharif season
DuR=1700;          //Duty of water for rabi season

CIA=A*CI/100;    //Culturable irrigable area
AK=CIA*IK/100;   //Area under kharif season
AR=CIA*IR/100;   //Area under rabi season
DK=AK/DuK;
DR=AR/DuR;
mprintf("Dischage required at head of canal during Kharif season=%f cumecs.",DK);
mprintf("\nDischage required at head of canal during Rabi season=%f cumecs.",DR);
mprintf("\nWater requirement during kharif is greater than during rabi season");
mprintf("\nHence,canal should be designed to carry discharge of %f cumecs.",DK);
