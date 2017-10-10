//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.4
      clc
     clear
     
//Given Data:-
        Cv=0.97;
        Ku=0.46;
        K=0.98;
        m=10.2;
        beta_o=10;        //Bucket angle at exit, degrees
        eta_m=90.5/100;          //Mechanical Efficiency

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
        Vi_by_rootH=Cv*sqrt(2*g);        //Vi/sqrt(H)
        Vwi_by_rootH=Vi_by_rootH;
        ui_by_rootH=Ku*sqrt(2*g);          //ui/sqrt(H)
        Vri_by_rootH=Vi_by_rootH-ui_by_rootH;             //Vi/sqrt(H)
        Vro_by_rootH=K*Vri_by_rootH;          //Vro/sqrt(H)
        Vrwo_by_rootH=Vro_by_rootH*cosd(beta_o);        //Vrwo/sqrt(H)
        Vwo_by_rootH=Vrwo_by_rootH-ui_by_rootH;         //Vwo/sqrt(H)
        Q_by_d2_rootH=(%pi/4)*Vi_by_rootH;        //Q/(d^2*sqrt(H))
   //Pr=Power developed by runner
        Pr_by_d2_H3_2=rho*Q_by_d2_rootH*(Vwi_by_rootH+Vwo_by_rootH)*ui_by_rootH;        //Pr/(d^2*H^(3/2)), P in W
   //P=Shaft Power
        P_by_d2_H3_2=eta_m*Pr_by_d2_H3_2/1000;           //P/(d^2*H^(3/2)), P in kW
        N_d_by_rootH=ui_by_rootH*60/(%pi*m);           //N*d/sqrt(h), N in rpm
        Ns=N_d_by_rootH*sqrt(P_by_d2_H3_2);           //Specific Speed in SI Units

//Results:-
     printf("The Specific Speed of the Turbine, Ns=%.f  (SI Units)", Ns)



