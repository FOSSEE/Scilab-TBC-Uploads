//Example 33.4
//Quark composition  for neutral Xi is uss
u_charge=+2/3;//Charge for u quark, See Table 33.3
s_charge=-1/3;//Charge for s quark, See Table 33.3
total_charge=u_charge+s_charge+s_charge;
printf('Total charge = %d (q_e)',total_charge)
if total_charge==0//Charge=0 for neutral Xi, from Table 33.2
    printf(', (It is consistent with the value found in Table 33.2)')
else
    printf(', (It is not consistent with the value found in Table 33.2)')
end

u_baryon=+1/3;//Baryon number for u quark, See Table 33.3
s_baryon=+1/3;//Baryon number for s quark, See Table 33.3
baryon_number=u_baryon+s_baryon+s_baryon;
printf('\nBaryon number = %d',baryon_number)
if baryon_number==1//Baryon Number=1 for neutral Xi, from Table 33.2 
    printf(' (It is consistent with the value found in Table 33.2)')
else
    printf(' (It is not consistent with the value found in Table 33.2)')
end

u_strangeness=0;//Strangeness for u quark, See Table 33.3
s_strangeness=-1;//Strangeness for s quark, See Table 33.3
strangeness=u_strangeness+s_strangeness+s_strangeness;
printf('\nStrangeness = %d',strangeness)
if strangeness==-2//Strangeness=-2 for neutral Xi, from Table 33.2 
    printf(' (It is consistent with the value found in Table 33.2)')
else
    printf(' (It is not consistent with the value found in Table 33.2)')
end

u_charm=0;//Charm for u quark, See Table 33.3
s_charm=0;//Charm for s quark, See Table 33.3
charm=u_charm+s_charm+s_charm;
printf('\nCharm = %d',charm)

u_topness=0;//Topness for u quark, See Table 33.3
s_topness=0;//Topness for s quark, See Table 33.3
topness=u_topness+s_topness+s_topness;
printf('\nTopness = %d',topness)

u_bottomness=0;//Bottomness for u quark, See Table 33.3
s_bottomness=0;//Bottomness for s quark, See Table 33.3
bottomness=u_bottomness+s_bottomness+s_bottomness;
printf('\nBottomness = %d',bottomness)

lepton_family_numbers=0;//It is not a lepton, See Table 33.2
printf('\nLepton family numbers (electron,muon and tau) = %d (It is not a lepton)',lepton_family_numbers)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
