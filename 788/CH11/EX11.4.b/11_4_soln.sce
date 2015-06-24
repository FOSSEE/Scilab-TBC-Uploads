clc;
pathname=get_absolute_file_path('11_4_soln.sce')
filename=pathname+filesep()+'11_4_data.sci'
exec(filename)

// Solution:
// pump power loss,
pump_HP_loss=((1/(eff_overall/100))-1)*((p*Q)/1714); //HP
// PRV average HP loss,
PRV_loss=0.5*((p*Q)/1714); //HP
// line average HP loss,
line_loss=(HP_frict/100)*PRV_loss; //HP
// total average loss,
total_loss=pump_HP_loss+PRV_loss+line_loss; //HP
// heat exchanger rating,
HEx_rating=total_loss*2544; //Btu/hr

// Results:
printf("\n  Results:  ")   
printf("\n The heat exchanger rating is %.0f Btu/hr.",HEx_rating)
printf("\n The answer in the program does not match with that in the textbook due to roundoff error (standard ratings) in textbook")
