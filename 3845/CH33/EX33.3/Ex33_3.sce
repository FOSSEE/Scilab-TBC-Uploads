//Example 33.3
//See Table 33.2
//Part (a)
S_negative_Xi=-2;//Strangeness of negative Xi
S_neutral_Lambda=-1;//Strangeness of neutral Lambda
S_negative_Pi=0;//Strangeness of negative Pion 
S_change=abs((S_negative_Pi+S_neutral_Lambda)-S_negative_Xi);//Change in strangeness
printf('a.Strangeness changes by +%d',S_change)

B_negative_Xi=+1;//Baryon number of negative Xi
B_neutral_Lambda=+1;//Baryon number of neutral Lambda 
B_negative_Pi=0;//Baryon number of negative Pion
if  (B_negative_Xi==B_neutral_Lambda+B_negative_Pi)
       printf('\n  Baryon number is conserved')
else
       printf('\n  Baryon number is not conserved')
end

Charge_negative_Xi=-1;//Charge of negative Xi
Charge_neutral_Lambda=0;//Charge of neutral Lambda
Charge_negative_Pi=-1;//Charge of negative Pion
if Charge_negative_Xi==(Charge_neutral_Lambda+Charge_negative_Pi)
    printf('\n  Charge is conserved')
else
    printf('\n  Charge is not conserved')
end

printf('\n  Lepton numbers:')
Le_negative_Xi=0;//Electron family number of negative Xi
Le_neutral_Lambda=0;//Electron family number of neutral Lambda 
Le_negative_Pi=0;//Electron family number of negative Pion
if  (Le_negative_Xi==Le_neutral_Lambda+Le_negative_Pi)
       printf('\n  Electron family number is conserved')
else
       printf('\n  Electron family number is not conserved')
end

Ltau_negative_Xi=0;//Tau family number of negative Xi
Ltau_neutral_Lambda=0;//Tau family number of neutral Lambda 
Ltau_negative_Pi=0;//Tau family number of negative Pion
if  (Ltau_negative_Xi==Ltau_neutral_Lambda+Ltau_negative_Pi)
       printf('\n  Tau family number is conserved')
else
       printf('\n  Tau family number is not conserved')
end

Lmu_negative_Xi=0;//Muon family number of negative Xi
Lmu_neutral_Lambda=0;//Muon family number of neutral Lambda 
Lmu_negative_Pi=0;//Muon family number of negative Pion
if  (Lmu_negative_Xi==Lmu_neutral_Lambda+Lmu_negative_Pi)
       printf('\n  Muon family number is conserved')
else
       printf('\n  Muon family number is not conserved')
end

///////////////////////////////////////////////////////////////
//Part (b)
i=1;//An indicator; i is set to zero if any of the conditions fail

//It is stated in the textbook that charge is conserved as s->d. The steps followed in this code analyze individual charges of the quarks composing the positive kaon and the leptons produced by its decay.
//Positive Kaon is made of two quarks- up and strange antiquark, See Table 33.4
charge_u=+2/3;//Charge of u quark, See Table 33.3
charge_s_anti=+1/3//Charge of s antiquark, See Table 33.3
charge_positive_Kaon=charge_u+charge_s_anti;//Charge of positive Kaon
charge_positive_Muon=+1;//Charge of positive Muon
charge_Mu_Neutrino=0;//Charge of Muon Neutrino
if  (charge_positive_Kaon==charge_positive_Muon+charge_Mu_Neutrino)
       printf('\n\nb.Charge is conserved')
else
       printf('\n\nb.Charge is not conserved')
       i=0;
end

B_positive_Kaon=0;//Baryon number of positive Kaon
B_positive_Muon=0;//Baryon number of positive Muon 
B_Mu_Neutrino=0;//Baryon number of Muon Neutrino
if  (B_positive_Kaon==B_positive_Muon+B_Mu_Neutrino)
       printf('\n  Baryon number is conserved')
else
       printf('\n  Baryon number is not conserved')
       i=0;
end

m_positive_Kaon=493.7;//Rest mass of positive Kaon (MeV/c^2)
m_positive_Muon=105.7;//Rest mass of positive Muon (MeV/c^2)
m_Mu_Neutrino=0;//Rest mass Muon Neutrino (MeV/c^2)
//Decay can be spontaneous if positive Kaon has greater mass than the products of decay
if (m_positive_Kaon>(m_positive_Muon+m_Mu_Neutrino))
    printf('\n  Mass-energy is conserved')
else
    printf('\n  Mass-energy is not conserved')
    i=0;
end

S_positive_Kaon=+1;//Strangeness of positive Kaon
S_positive_Muon=0;//Strangeness of positive Muon
S_Mu_Neutrino=0;//Strangeness of Muon Neutrino 
if abs((S_positive_Muon+S_Mu_Neutrino)-S_positive_Kaon)<=1
    printf('\n  Strangeness is conserved')
else
    printf('\n  Strangeness is not conserved')
    i=0;
end

printf('\n  Lepton numbers:')
Le_positive_Kaon=0;//Electron family number of positive Kaon
Le_positive_Muon=0;//Electron family number of positive Muon 
Le_Mu_Neutrino=0;//Electron family number of Muon Neutrino
if  (Le_positive_Kaon==Le_positive_Muon+Le_Mu_Neutrino)
       printf('\n  Electron family number is conserved')
else
       printf('\n  Electron family number is not conserved')
       i=0;
end

Ltau_positive_Kaon=0;//Tau family number of positive Kaon
Ltau_positive_Muon=0;//Tau family number of positive Muon 
Ltau_Mu_Neutrino=0;//Tau family number of Muon Neutrino
if  (Ltau_positive_Kaon==Ltau_positive_Muon+Ltau_Mu_Neutrino)
       printf('\n  Tau family number is conserved')
else
       printf('\n  Tau family number is not conserved')
       i=0;
end

Lmu_positive_Kaon=0;//Muon family number of positive Kaon
Lmu_positive_Muon=-1;//Muon family number of positive Muon
Lmu_Mu_Neutrino=+1;//Muon family number of Muon Neutrino
if  (Lmu_positive_Kaon==Lmu_positive_Muon+Lmu_Mu_Neutrino)
       printf('\n  Muon family number is conserved')
else
       printf('\n  Muon family number is not conserved')
       i=0;
end


if i==1
    printf('\n\n  The decay is allowed')
else
    printf('\n\n  The decay is not allowed')
end
//Some of the solution steps are not given in the textbook; the steps mentioned here may need to be check for theoretical correctness 
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
