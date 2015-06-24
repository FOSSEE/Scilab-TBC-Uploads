clc
clear
//DATA GIVEN
T1=400+273;               //temp. in K
T2=T1;
T3=40+273;                //temp. in K
T4=T3;
W=130;                    //work produced in kJ

ETAth=(T1-T3)/T1;         //Engine thermal efficiency

//ETAth=Work done/Heat added
Ha=W/ETAth;               //Heat added in kJ
Hr=Ha-W;                  //Heat rejected in kJ
//Heat rejected=T3(S3-S4)
S34=Hr/T3;                //Entropy change during the heat rejection process 

printf(' (i) The Engine thermal efficiency is: %1.3f or %2.1f percent. \n',ETAth,(ETAth*100));
printf(' (ii) The Heat added is: %3.0f kJ. \n',Ha);
printf('(iii) The Entropy change during the heat rejection process is: %1.3f kJ/K. \n',S34);
