clc;
pathname=get_absolute_file_path('11_5_soln.sce')
filename=pathname+filesep()+'11_5_data.sci'
exec(filename)

// Solution:
// pump power loss,
pump_loss=((1/(eff_overall/100))-1)*((p*10^5*Q)/1000); //kW
// PRV average HP loss,
PRV_loss=0.5*((p*10^5*Q)/1000); //kW
// line average HP loss,
line_loss=(HP_frict/100)*PRV_loss; //kW
// total average loss,
HEx_rating=pump_loss+PRV_loss+line_loss; //kW

// Results:
printf("\n  Results:  ")   
printf("\n The heat exchanger rating is %.2f kW.",HEx_rating)
