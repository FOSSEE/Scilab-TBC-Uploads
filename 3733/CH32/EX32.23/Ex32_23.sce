// Example 32_23
clc;funcprot(0);
//Given data
CL=5;// kW
n=1000;// No. of apartments
No=[2 2 2 1 4 2 1 2 2 2 2 1];
Cl=[20 10 60 5 8 10 2 5 120 4 7 5];// Connected load of each in kW
F_d=[0.68 0.56 0.54 0.68 0.75 0.82 0.71 0.55 0.60 0.72 0.65 0.88];// Demand factors
F_da=40/100;// Demand factor of the apartments
F_dir=3.2;//  Group diversity factor of the residential system
F_dirp=1.5;// Peak diversity factor of the residential system
F_dic=1.6;// Group diversity factor of the commercial system
F_dicp=1.2;// Peak diversity factor of the commercial system
E_l=5/100;// Losses of delievered energy

// Calculation
D=n*CL*F_da;// Demand of power from 1000 apartments in kW
MD_r=D/F_dir;// Maximum demand of 1000 apartments in kW
D_p1=MD_r/F_dirp;// Demand at the time of system peak in kW
for (i=1:12)
    Tl(i)=Cl(i)*No(i);
    MD_c(i)=Tl(i)*F_d(i);
end
MD=MD_c(1)+MD_c(2)+MD_c(3)+MD_c(4)+MD_c(5)+MD_c(6)+MD_c(7)+MD_c(8)+MD_c(9)+MD_c(10)+MD_c(11)+MD_c(12);
MD_c=(MD)/F_dic;// Maximum demand of 1000 commercial group in kW
D_p2=MD_c/F_dicp;// Demand at the time of system peak in kW
TMD=(D_p1+D_p2)*(1+E_l);// Total maximum demand in kW
printf('\nThe increase in peak demand=%0.2f kW',TMD);
// The answer vary due to round off error

