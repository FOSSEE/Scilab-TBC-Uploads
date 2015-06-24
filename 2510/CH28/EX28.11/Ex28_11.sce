//Variable declaration:
//From table 28.3:
//For stream 1 to be heated:
hm1 = 50000                      //Mass flowrate (lb/h)
hcP1 = 0.65                      //Heat capacity (Btu/lb. F)
hTi1 = 70                        //Inlet temperature ( F)
hTo1 = 300                       //Outlet temperature ( F)
//For stream 2 to be heated:
hm2 = 60000                      //Mass flowrate (lb/h)
hcP2 = 0.58                      //Heat capacity (Btu/lb. F)
hTi2 = 120                       //Inlet temperature ( F)
hTo2 = 310                       //Outlet temperature ( F)
//For stream 3 to be heated:
hm3 = 80000                      //Mass flowrate (lb/h)
hcP3 = 0.78                      //Heat capacity (Btu/lb. F)
hTi3 = 90                        //Inlet temperature ( F)
hTo3 = 250                       //Outlet temperature ( F)
//From table 28.4:
//For stream 1 to be cooled:
cm1 = 60000                      //Mass flowrate (lb/h)
ccP1 = 0.70                      //Heat capacity (Btu/lb. F)
cTi1 = 420                       //Inlet temperature ( F)
cTo1 = 120                       //Outlet temperature ( F)
//For stream 2 to be cooled:
cm2 = 40000                      //Mass flowrate (lb/h)
ccP2 = 0.52                      //Heat capacity (Btu/lb. F)
cTi2 = 300                       //Inlet temperature ( F)
cTo2 = 100                       //Outlet temperature ( F)
//For stream 3 to be cooled:
cm3 = 35000                      //Mass flowrate (lb/h)
ccP3 = 0.60                      //Heat capacity (Btu/lb. F)
cTi3 = 240                       //Inlet temperature ( F)
cTo3 = 90                        //Outlet temperature ( F)

//Calculation:
H1 = hm1*hcP1*(hTo1-hTi1)        //Heating duty for stream 1 (Btu/h)
H2 = hm2*hcP2*(hTo2-hTi2)        //Heating duty for stream 2 (Btu/h)
H3 = hm3*hcP3*(hTo3-hTi3)        //Heating duty for stream 1 (Btu/h)
H = H1+H2+H3                     //Total heating duty (Btu/h)
C1 = cm1*ccP1*(cTi1-cTo1)        //Cooling duty for stream 1 (Btu/h)
C2 = cm2*ccP2*(cTi2-cTo2)        //Cooling duty for stream 2 (Btu/h)
C3 = cm3*ccP3*(cTi3-cTo3)        //Cooling duty for stream 1 (Btu/h)
C = C1+C2+C3                     //Total Cooling duty (Btu/h)

//Result:
printf("Table: Duty Requirements.")
printf("Stream                   Duty, Btu/h")
printf("1                       %.0f",H1)
printf("2                       %.0f",H2)
printf("3                       %.0f",H3)
printf("4                       %.0f",C1)
printf("5                       %.0f",C2)
printf("6                       %.0f",C3)
