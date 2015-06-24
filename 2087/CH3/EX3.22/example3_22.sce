

//example 3.22
//calculate
//discharge required at head of distributory
clc;
//given
GCA=10000;                    //gross commanded area
CCA=0.75*GCA;                 //Culturable commanded area
IR=0.6;                       //intensity of irrigation during rabi season
IK=0.3;                       //intensity of irrigation during kharif season  
DuR=2500;                     //duty during rabi season
DuK=1000;                     //duty during kharif season
AR=IR*CCA;                    //area under irrigation in rabi season
AK=IK*CCA;                    //area under irrigation in kharif season
DR=AR/DuR;
DK=AK/DuK;
mprintf("discharge required at head of distributory=%f cumecs.",DK);


