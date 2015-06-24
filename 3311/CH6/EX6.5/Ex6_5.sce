// chapter 6
// example 6.5
// fig. 6.14
// Determine design details
// page-287-288
clear;
clc;
// given
E_supply=230; // in V (voltage supply)
Im=12; // in A
Edc=150; // in V
alpha=30; // in degree
V_drop=1.5; // in V (voltage drop across SCR)
// calculate
// Since Edc=(2*Em/%pi)*cos(alpha)-V_drop, evaluating it for Em we get
Em=(%pi*(Edc+V_drop))/(2*cosd(alpha)); // calculation of peak voltage
Erms=Em/sqrt(2); // calculation of rms voltage
Irms=Im/sqrt(2); // calculation of rms current
TSR=2*Erms*Irms; // calculation of Transformer secondory rating
K=E_supply/Erms; // calculation of Transformer voltage ratio
I_P=Im*(1/K); // calculation of Transformer primary current
PIV=2*Em;// calculation of PIV for each SCR
printf("\nFor M-2 connection\n")
printf("\n\tThe peak voltage is \t\t\tEm=%.1f V",Em);
printf("\n\tThe rms volatge is \t\t\tErms=%.2f V",Erms);
printf("\n\tThe rms current is \t\t\tIrms=%.2f A",Irms);
printf("\n\tThe Transformer secondory rating is \t %.1f kVA",TSR*1E-3);
printf("\n\tThe Transformer voltage ratio is \tK=%.2f",K);
printf("\n\tThe Transformer primary current is \tI_P=%.2f A",I_P);
printf("\n\tThe PIV for each SCR is \t\tPIV=%.f V",PIV);
Em=(%pi*(Edc+2*V_drop))/(2*cosd(alpha)); // calculation of peak voltage
Erms=Em/sqrt(2); // calculation of rms voltage
Irms=Im; // calculation of rms current
TSR=Erms*Irms; // calculation of Transformer secondory rating
K=E_supply/Erms; // calculation of Transformer voltage ratio
I_P=Im*(1/K); // calculation of Transformer primary current
PIV=Em;// calculation of PIV for each SCR
I_rms_SCR=Im/sqrt(2); // calculation of rms current for each SCR
printf("\nFor B-2 connection\n")
printf("\n\tThe peak voltage is \t\t\tEm=%.2f V",Em);
printf("\n\tThe rms volatge is \t\t\tErms=%.2f V",Erms);
printf("\n\tThe rms current is \t\t\tIrms=%.f A",Irms);
printf("\n\tThe Transformer secondory rating is \t %.2f kVA",TSR*1E-3);
printf("\n\tThe Transformer voltage ratio is \tK=%.2f",K);
printf("\n\tThe Transformer primary current is \tI_P=%.2f A",I_P);
printf("\n\tThe PIV for each SCR is \t\tPIV=%.2f V",PIV);
printf("\n\tThe rms current for each SCR is \t%.1f A",I_rms_SCR);
SCR_loss_M2=(V_drop/Edc)*100; // SCR loss in M2 connection
SCR_loss_B2=(2*V_drop/Edc)*100; // SCR loss in B2 connection
printf("\n\nThe SCR  loss in M2 connection is \t%.f percent of the load power",SCR_loss_M2);
printf("\nThe SCR  loss in B2 connection is \t%.f percent of the load power",SCR_loss_B2);